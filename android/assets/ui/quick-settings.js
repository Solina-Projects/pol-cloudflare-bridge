/*
 * Solina CF-Bridge — quick settings overlay for the in-app browser.
 *
 * EXPECTED NATIVE HOOK (not wired in yet):
 *   After the in-app browser WebView finishes loading an AI site page,
 *   inject this file (e.g. webView.evaluateJavascript(<contents of this
 *   file>) in MainActivity / the browser WebViewClient.onPageFinished).
 *   It needs NO other native change.
 *
 * NEW bridge:// URLs this file uses (native handlers do not exist yet):
 *   bridge://home              — go back to the home dashboard
 *   bridge://home?screen=ai    — go back to the home dashboard, AI picker screen
 *   bridge://fullscreen?on=1   — enter fullscreen (hide system bars)
 *   bridge://fullscreen?on=0   — exit fullscreen
 *   Until those handlers exist, tapping the buttons is a harmless no-op
 *   (unknown bridge:// URLs fall through handleBridgeAction).
 *
 * Self-contained: plain JS, no dependencies, no reliance on the home
 * page's JS or CSS. All styling is inline. Safe to inject twice
 * (guarded by window.__solinaQS). Must not break the host page:
 * every id/class is prefixed solina-qs-, and nothing global is touched
 * except the guard flag.
 */
(function () {
  if (window.__solinaQS) return; /* already injected */
  window.__solinaQS = true;

  var BTN_ID = 'solina-qs-btn';
  var PANEL_ID = 'solina-qs-panel';

  function el(tag, text) {
    var e = document.createElement(tag);
    if (text != null) e.textContent = text;
    return e;
  }

  function style(e, s) { e.setAttribute('style', s); return e; }

  function go(url) { window.location.href = url; }

  function build() {
    if (document.getElementById(BTN_ID)) return; /* already on the page */

    var accent = '#ff8a2a';
    var bg = '#131b2a';
    var bg2 = '#0a0f18';
    var edge = '#2d3b54';
    var ink = '#eaf0f8';
    var mute = '#7c8ba1';

    /* ---- floating button (bottom-left corner) ---- */
    var btn = el('button', '');
    btn.id = BTN_ID;
    btn.setAttribute('aria-label', 'تنظیمات سریع Solina');
    btn.setAttribute('title', 'تنظیمات سریع Solina');
    style(btn,
      'position:fixed;left:16px;bottom:16px;z-index:999999;' +
      'width:48px;height:48px;border-radius:50%;border:1px solid ' + edge + ';' +
      'background:' + bg + ';color:' + accent + ';' +
      'font:700 20px system-ui,sans-serif;' +
      'display:flex;align-items:center;justify-content:center;' +
      'cursor:pointer;box-shadow:0 8px 20px -6px rgba(0,0,0,.7);' +
      'padding:0;margin:0;-webkit-tap-highlight-color:transparent;');
    btn.textContent = 'S';

    /* ---- compact panel ---- */
    var panel = el('div', '');
    panel.id = PANEL_ID;
    style(panel,
      'position:fixed;left:16px;bottom:76px;z-index:999999;' +
      'width:230px;max-width:calc(100vw - 32px);' +
      'border-radius:16px;border:1px solid ' + edge + ';' +
      'background:linear-gradient(180deg,' + bg + ',' + bg2 + ');' +
      'color:' + ink + ';font:14px/1.7 system-ui,sans-serif;' +
      'padding:14px;direction:rtl;text-align:right;' +
      'box-shadow:0 20px 40px -12px rgba(0,0,0,.8);display:none;');

    var title = el('div', 'تنظیمات سریع — Solina');
    style(title, 'font-weight:700;font-size:14px;margin-bottom:2px;');
    panel.appendChild(title);

    var status = el('div', 'پل: فعال · US Oregon');
    style(status, 'font-size:11.5px;color:' + mute + ';margin-bottom:12px;');
    panel.appendChild(status);

    var note = el('div', 'وضعیت بالا آخرین وضعیت ثبت‌شده در صفحهٔ خانه است.');
    style(note, 'font-size:10.5px;color:' + mute + ';margin-bottom:12px;line-height:1.6;');
    panel.appendChild(note);

    function row(label, url) {
      var b = el('button', label);
      style(b,
        'display:block;width:100%;height:42px;margin:0 0 8px 0;padding:0 12px;' +
        'border-radius:12px;border:1px solid ' + edge + ';' +
        'background:#0e1522;color:' + ink + ';' +
        'font:700 13px system-ui,sans-serif;text-align:right;cursor:pointer;');
      b.addEventListener('click', function () { go(url); });
      panel.appendChild(b);
      return b;
    }

    row('بازگشت به خانه', 'bridge://home');
    row('تعویض هوش مصنوعی', 'bridge://home?screen=ai');
    row('تمام‌صفحه', 'bridge://fullscreen?on=1');
    row('خروج از تمام‌صفحه', 'bridge://fullscreen?on=0');

    var close = el('button', 'بستن');
    style(close,
      'display:block;width:100%;height:38px;margin:2px 0 0 0;padding:0;' +
      'border:0;border-radius:12px;background:transparent;color:' + mute + ';' +
      'font:600 12.5px system-ui,sans-serif;cursor:pointer;');
    close.addEventListener('click', function () { panel.style.display = 'none'; });
    panel.appendChild(close);

    btn.addEventListener('click', function () {
      panel.style.display = (panel.style.display === 'none' || panel.style.display === '') ? 'block' : 'none';
    });

    document.body.appendChild(btn);
    document.body.appendChild(panel);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', build);
  } else {
    build();
  }
})();
