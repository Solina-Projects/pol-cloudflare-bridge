(function (config) {
  'use strict';
  // Runs ONLY in the official site's top document. No native JS interface and no credential readback.
  const host = String(location.hostname || '').toLowerCase();
  if (location.protocol !== 'https:' || (location.port && location.port !== '443') || !(host === 'muse.ai' || host.endsWith('.muse.ai')) || window.top !== window.self) {
    return {state: 'blocked_origin'};
  }
  const visible = element => {
    if (!element || element.disabled || element.type === 'hidden') return false;
    const rect = element.getBoundingClientRect();
    const style = getComputedStyle(element);
    return rect.width > 0 && rect.height > 0 && style.display !== 'none' && style.visibility !== 'hidden';
  };
  const path = String(location.pathname || '/');
  if (/(?:^|\/)(?:settings|checkout|billing|payment|connectors?|reset|forgot|recover)(?:\/|$)/i.test(path)) return {state:'not_login_context'};
  const heading = Array.from(document.querySelectorAll('h1,h2,h3,[role="heading"]')).filter(visible).map(e => e.innerText || '').join(' ').slice(0,1000);
  const authContext = /(?:^|\/)(?:access|login|signin|sign-in|signup|sign-up|register|auth|onboarding)?(?:\/|$)/i.test(path) || !!document.querySelector('input[type="email"],input[inputmode="email"],input[autocomplete*="username"],#access-pane')
    || /log.?in|sign.?in|create.{0,20}account|ورود|ثبت.?نام/i.test(heading);
  if (!authContext) return {state:'not_login_context'};
  const inputs = Array.from(document.querySelectorAll('input')).filter(visible);
  const nameOf = element => [element.type,element.name,element.id,element.autocomplete,element.placeholder,element.getAttribute('aria-label')].filter(Boolean).join(' ').toLowerCase();
  const otp = inputs.some(e => /one-time-code|\botp\b|verification.?code|verify.?code|passcode|confirmation.?code/.test(nameOf(e)));
  if (otp || (inputs.some(e => /code|کد/.test(nameOf(e))) && !inputs.some(e => e.type === 'email' || e.type === 'password'))) {
    return {state:'wait_code'};
  }
  const captcha = Array.from(document.querySelectorAll('iframe')).some(frame => {
    const source = String(frame.src || '');
    const rect = frame.getBoundingClientRect();
    return /recaptcha|hcaptcha|challenges\.cloudflare\.com/.test(source) && rect.width >= 100 && rect.height >= 40 && visible(frame);
  }) || !!document.querySelector('#challenge-running, #challenge-stage, .h-captcha:not([data-size="invisible"])');
  if (captcha) return {state:'wait_captcha'};

  const state = window.__polAssistState || (window.__polAssistState = {filled:new WeakSet(), submitted:new WeakSet(), pending:new WeakSet()});
  const eligibleForm = field => {
    const form = field.form || field.closest('form');
    if (!form) return null;
    const action = form.getAttribute('action');
    if (action) {
      try {
        const url = new URL(action,location.href);
        if (url.protocol !== 'https:' || (url.port && url.port !== '443') || url.username || url.password || !(url.hostname === 'muse.ai' || url.hostname.endsWith('.muse.ai'))) return null;
      } catch { return null; }
    }
    return form;
  };
  const email = inputs.find(e => ['email','text','tel',''].includes(e.type) && (e.type === 'email' || /(^|\s)(email|username|identifier)(\s|$)|email.?address|e-mail|ایمیل|mobile number or email/.test(nameOf(e))));
  const passwords = inputs.filter(e => e.type === 'password');
  const setValue = (element,value) => {
    if (!value || state.filled.has(element)) return false;
    const form = eligibleForm(element);
    if (!form) return false;
    const setter = Object.getOwnPropertyDescriptor(HTMLInputElement.prototype,'value').set;
    setter.call(element,value);
    element.dispatchEvent(new Event('input',{bubbles:true}));
    element.dispatchEvent(new Event('change',{bubbles:true}));
    state.filled.add(element);
    return true;
  };
  let emailFilled = false, passwordFilled = false, field = null;
  if (email && config.email) { emailFilled = setValue(email,config.email); field = email; }
  if (passwords.length && config.password) {
    // Only the user-supplied Muse password; never fetch a saved Google/Gmail password.
    for (const password of passwords.slice(0,2)) passwordFilled = setValue(password,config.password) || passwordFilled;
    field = passwords[0];
  }
  if (!field) return {state:passwords.length ? 'password_needed' : 'awaiting_form'};
  const form = eligibleForm(field);
  if (!form) return {state:'manual_required'};
  if (emailFilled || passwordFilled) state.pending.add(form);
  if (!config.autoSubmit || config.remaining <= 0 || state.submitted.has(form) || !state.pending.has(form)) {
    return {state:passwordFilled ? 'password_filled' : emailFilled ? 'email_filled' : 'awaiting_form'};
  }
  if (passwords.length && !config.password) return {state:'password_needed'};
  const allowedText = /^(continue|next|log\s?in|sign\s?in|sign\s?up|create(?: an?)? account|get started|ادامه|بعدی|ورود|ثبت[‌\s]?نام)$/i;
  const buttons = Array.from(form.querySelectorAll('button,input[type="submit"]')).filter(visible);
  const submit = buttons.find(button => allowedText.test(String(button.innerText || button.value || '').trim()));
  if (!submit) return {state:passwordFilled ? 'password_filled' : 'email_filled'};
  state.submitted.add(form); state.pending.delete(form);
  setTimeout(() => submit.click(),80);
  return {state:passwords.length ? 'submitted_password' : 'submitted_email', submitted:true};
})
