<div align="center">

# 🌉 پل کلودفلر · Pol Cloudflare Bridge
### تونل اختصاصی و امن TLS over WebSocket با IP اختصاصی آمریکا برای دسترسی به هوش مصنوعی Meta Muse
**Next-Generation Edge Tunneling · Cloudflare Workers · Android Native Proxy · 3D Isometric UI**

<br/>

<a href="https://github.com/imgutss/pol-cloudflare-bridge/releases/latest">
  <img src="https://img.shields.io/badge/دانلود%20مستقیم%20APK-نسخه%20نهایی%20v1.0.0-FF8A2A?style=for-the-badge&logo=android&logoColor=white" alt="Download APK" />
</a>
<a href="https://github.com/imgutss/pol-cloudflare-bridge/stargazers">
  <img src="https://img.shields.io/badge/⭐%20Star%20Repo-پروژه%20را%20ستاره%20دهید-F59E0B?style=for-the-badge" alt="Stars" />
</a>
<a href="./LICENSE">
  <img src="https://img.shields.io/badge/License-MIT-10B981?style=for-the-badge" alt="License" />
</a>

<br/><br/>

<img src="https://img.shields.io/badge/Android-8.0%2B%20(Oreo%20to%2015)-3DDC84?style=flat-square&logo=android&logoColor=white" />
<img src="https://img.shields.io/badge/Cloudflare-Workers%20Edge-F38020?style=flat-square&logo=cloudflare&logoColor=white" />
<img src="https://img.shields.io/badge/Transport-TLS%20over%20WebSocket-0EA5E9?style=flat-square&logo=websocket&logoColor=white" />
<img src="https://img.shields.io/badge/Egress%20Region-US%20(Virginia%20%2F%20Oregon)-8B5CF6?style=flat-square" />
<img src="https://img.shields.io/badge/Security-Zero%20Knowledge%20E2EE-10B981?style=flat-square" />
<img src="https://img.shields.io/badge/UI-3D%20Isometric%20Persian-EC4899?style=flat-square" />
<img src="https://img.shields.io/badge/Meta%20Muse-Supported%20100%25-0081FB?style=flat-square&logo=meta&logoColor=white" />

<br/><br/>

<img src="https://readme-typing-svg.demolab.com?font=Vazirmatn&weight=700&size=20&pause=1000&color=FF8A2A&center=true&vCenter=true&width=750&lines=%D9%BE%D9%84%20%DA%A9%D9%84%D9%88%D8%AF%D9%81%D9%84%D8%B1%D8%9B%20%D8%AA%D9%88%D9%86%D9%84%20%D8%A7%D9%85%D9%86%20%D9%88%20%D9%85%D8%B3%D8%AA%D9%82%DB%8C%D9%85%20%D8%A8%D9%87%20%D9%87%D9%88%D8%B4%20%D9%85%D8%B5%D9%86%D9%88%D8%B9%DB%8C%20Meta%20Muse;%D8%B9%D8%A8%D9%88%D8%B1%20%D8%A7%D8%B2%20%D8%AA%D8%AD%D8%B1%DB%8C%D9%85%E2%80%8C%D9%87%D8%A7%20%D8%A8%D8%A7%20%D8%AE%D8%B1%D9%88%D8%AC%DB%8C%20%D8%AE%D8%A7%D9%84%D8%B5%20%D8%A2%D9%85%D8%B1%DB%8C%DA%A9%D8%A7%20(Reston%20%2F%20Oregon);%D8%B1%D9%85%D8%B2%D9%86%DA%AF%D8%A7%D8%B1%DB%8C%20%D8%B3%D8%B1%D8%AA%D8%A7%D8%B3%D8%B1%DB%8C%20TLS%20%D8%A8%D8%AF%D9%88%D9%86%20%D8%AF%D8%B3%D8%AA%D8%B1%D8%B3%DB%8C%20%D8%B3%D8%B1%D9%88%D8%B1%20%D8%A8%D9%87%20%D8%A7%D8%B7%D9%84%D8%A7%D8%B9%D8%A7%D8%AA;%D8%B1%D8%A7%D8%A8%D8%B7%20%DA%A9%D8%A7%D8%B1%D8%A8%D8%B1%DB%8C%20%D9%81%D9%88%D9%82%E2%80%8C%D9%85%D8%AF%D8%B1%D9%86%20%D8%B3%D9%87%E2%80%8C%D8%A8%D8%B9%D8%AF%DB%8C%20%D8%AB%D8%A7%D8%A8%D8%AA%20%D9%88%20%D9%BE%D8%A7%DB%8C%D8%AF%D8%A7%D8%B1" alt="Typing Banner" />

<br/>

[📋 راهنمای فارسی](#-پل-کلودفلر-چیست) • [🚀 نصب سریع و دانلود](#-دانلود-و-نصب-سریع) • [🏗️ معماری شبکه](#-معماری-شبکه-و-نحوه-کارکرد) • [🛠️ راه‌اندازی ورکر شخصی](#-راه‌اندازی-ورکر-شخصی-self-host) • [English Overview](#-english-overview)

</div>

---

<div dir="rtl">

## 🌟 پل کلودفلر چیست؟

**پل کلودفلر (Pol Cloudflare Bridge)** یک راهکار تخصصی و فوق‌العاده امن برای گذر از تحریم‌های منطقه‌ای و اتصال پایدار به سرویس‌های هوش مصنوعی شرکت **Meta (به‌ویژه [Meta Muse](https://muse.ai/))** است.

این برنامه به جای استفاده از VPNهای عمومی که معمولاً به دلیل اشتراکی بودن آی‌پی توسط سیستم‌های امنیتی و ضدتقلب متا مسدود یا با کپچاهای بی‌نهایت مواجه می‌شوند، یک **تونل اختصاصی رمزنگاری‌شده (TLS Passthrough over WebSocket)** بین گوشی کاربر و لبه‌های شبکهٔ ابری **Cloudflare Workers** در کشور آمریکا ایجاد می‌کند.

---

### ✨ ویژگی‌های برجسته:

* **🇺🇸 خروجی خالص با آی‌پی معتبر آمریکا (US Egress):** ترافیک وب‌سایت مستقیماً از دیتاسنترهای ویرجینیا و اورگان آمریکا خارج می‌شود و تحریم‌های سخت‌گیرانهٔ متا به راحتی دور زده می‌شوند.
* **🔒 رمزنگاری انتها‌به‌انتها (Zero-Knowledge E2EE):** هندشیک TLS مستقیماً بین مرورگر گوشی و سرور مقصد (Meta) برقرار می‌شود؛ سرور ورکر کلودفلر فقط حامل بسته‌های رمزنگاری‌شده است و هیچ کلید یا متنی را رمزگشایی نمی‌کند.
* **🎮 رابط کاربری سه‌بعدی ایزومتریک (3D UI):** طراحی چشم‌نواز با تم تاریک، الهام‌گرفته از معماری مدرن نئون با انیمیشن‌های روان و کاملاً بدون لرزش در اسکرول‌های لمسی.
* **⚡ عملکرد مستقل برای یک برنامه (App-Level Tunnel):** فقط مرورگر داخلی برنامه تونل می‌شود؛ بنابراین کل ترافیک اینترنت گوشی کند نمی‌شود و مصرف باتری به حداقل می‌رسد.
* **🤖 دستیار هوشمند ورود (Smart Login Assistant):** شناسایی خودکار فرم ورود رسمی Muse و کمک به پر کردن امن ایمیل بدون ذخیره‌سازی هیچ رمزی.
* **🛠️ قابلیت ساخت خودکار (1-Click Auto-Provision):** توانایی استقرار مستقیم ورکر روی اکانت رایگان کلودفلر شخصی کاربر با کلید اختصاصی.

---

## 🏗️ معماری شبکه و نحوه کارکرد

```
┌────────────────────────────────────────────────────────────────────────┐
│                          گوشی کاربر (Android)                           │
│                                                                        │
│   ┌────────────────────┐                 ┌─────────────────────────┐   │
│   │   3D HTML Canvas   │ ──(bridge://)──>│  MainActivity (Native)  │   │
│   │  داشبورد کاربری    │                 └───────────┬─────────────┘   │
│   └────────────────────┘                             │                 │
│                                                      ▼                 │
│   ┌────────────────────┐     HTTP CONNECT     ┌─────────────────────┐  │
│   │   Secure WebView   │ ───────────────────> │  LocalBridgeProxy   │  │
│   │   مرورگر ایزوله    │ <─────────────────── │  (127.0.0.1:Random) │  │
│   └────────────────────┘                      └──────────┬──────────┘  │
└──────────────────────────────────────────────────────────┼─────────────┘
                                                           │
                                             TLS over WSS  │ WebSocket
                                                           ▼
┌────────────────────────────────────────────────────────────────────────┐
│                     Cloudflare Global Edge Workers                     │
│                                                                        │
│               [ worker.js / cloudflare:sockets ]                       │
│        Placement: AWS US-East / Oregon (Washington Dulles)             │
└──────────────────────────────────┬─────────────────────────────────────┘
                                   │
                      TCP / TLS 443│ Direct Socket Stream
                                   ▼
┌────────────────────────────────────────────────────────────────────────┐
│                        Meta Muse Infrastructure                        │
│                                                                        │
│                       https://muse.ai/ (HTTP 200)                      │
│                  Destination: US Clean Residential/Edge                │
└────────────────────────────────────────────────────────────────────────┘
```

1. مرورگر داخلی برنامه یک درخواست استاندارد `CONNECT muse.ai:443` به پروکسی محلی (`LocalBridgeProxy`) ارسال می‌کند.
2. پروکسی محلی یک اتصال وب‌سوکت امن با هدر احراز هویت اختصاصی به ورکر کلودفلر (`wss://.../tunnel?host=muse.ai`) می‌زند.
3. ورکر کلودفلر با استفاده از قابلیت مدرن `cloudflare:sockets`، سوکت خام TCP را به مقصد در آمریکا باز می‌کند.
4. جریان دیتای TLS بین مرورگر و سرور متا بدون کوچکترین دستکاری مبادله می‌شود.

---

## 🚀 دانلود و نصب سریع

شما می‌توانید آخرین بیلد رسمی و امضا‌شده را مستقیماً از مخزن یا لینک‌های زیر دریافت کنید:

| منبع دانلود | لینک | وضعیت |
| :--- | :--- | :---: |
| **گیت‌هاب ریلیز (توصیه‌شده)** | [📦 دانلود از GitHub Releases](https://github.com/imgutss/pol-cloudflare-bridge/releases/latest) | `Active` |
| **لینک مستقیم Google Drive** | [📥 دانلود مستقیم با حجم ۱.۴ مگابایت](https://drive.google.com/uc?id=13nYc84UQyLmcADZwdumop3UTaP_1hcql&export=download) | `Mirror` |
| **مشاهده در درایو** | [👁️ باز کردن پوشه درایو](https://drive.google.com/file/d/13nYc84UQyLmcADZwdumop3UTaP_1hcql/view?usp=sharing) | `Public` |

### پیش‌نیازها:
* اندروید **8.0 به بالا** (اندروید ۸ تا ۱۵)
* فعال بودن **Android System WebView** به‌روز روی گوشی

---

## 🛠️ راه‌اندازی ورکر شخصی (Self-Host)

اگر مایلید ورکر اختصاصی خودتان را روی حساب شخصی کلودفلر بالا بیاورید:

```bash
# ۱. کلون کردن ریپازیتوری
git clone https://github.com/imgutss/pol-cloudflare-bridge.git
cd pol-cloudflare-bridge/worker

# ۲. نصب پیش‌نیازها
npm install

# ۳. تنظیم کلید امنیتی اختصاصی پل
npx wrangler secret put BRIDGE_TOKEN
# سپس یک کلید تصادفی و قوی مثل bridge_sec_your_secret را وارد کنید

# ۴. انتشار روی کلودفلر
npx wrangler deploy
```

پس از استقرار، آدرس ورکر خود (مثلاً `https://your-worker.workers.dev`) و کلید امنیتی‌تان را در بخش **«تنظیمات دستی»** اپلیکیشن وارد کنید.

---

## ❓ پرسش‌های متداول (FAQ)

<details>
<summary><b>آیا ورکر کلودفلر به رمز عبور یا اطلاعات من دسترسی دارد؟</b></summary>
<br/>
<b>خیر، به هیچ وجه.</b> کل ترافیک رمزنگاری انتهایه‌به‌انتها (TLS) دارد. کلیدهای رمزنگاری فقط درون رم مرورگر گوشی شما و سرور اصلی متا قرار دارند. ورکر فقط بایت‌های نامفهوم و رمزنگاری‌شده را مثل یک کابل شبکه جابه‌جا می‌کند.
</details>

<details>
<summary><b>چرا آدرس مقصد روی https://muse.ai/ تنظیم شده است؟</b></summary>
<br/>
متا اخیراً مسیر قدیمی <code>/access</code> را تبدیل به یک اندپوینت خصوصی کرده بود که خطای 401 برمی‌گرداند. صفحهٔ رسمی، لندینگ و فرم ورود عمومی و ثبت‌نام متا در ریشهٔ سایت یعنی <code>https://muse.ai/</code> قرار دارد.
</details>

<details>
<summary><b>چرا از کلودفلر ورکرز به جای VPN استفاده شده است؟</b></summary>
<br/>
کلودفلر دارای صدها نقطه تماس لبه‌ای در سراسر جهان است و پروتکل وب‌سوکت از سدهای معمول فیلترینگ و مسدودسازی‌های مبتنی بر IP بسیار بهتر عبور می‌کند. علاوه بر این، سرعت پینگ و تاخیر شبکه به حداقل می‌رسد.
</details>

<details>
<summary><b>آیا هزینه دارد؟</b></summary>
<br/>
پلان رایگان Cloudflare Workers روزانه ۱۰۰,۰۰۰ درخواست رایگان می‌دهد که برای استفاده‌های شخصی و ورود به سرویس‌های هوش مصنوعی بسیار بیشتر از مقدار نیاز است.
</details>

</div>

---

## 🌐 English Overview

**Pol Cloudflare Bridge** is an ultra-fast, privacy-preserving Android proxy client and Cloudflare Workers edge tunneling solution engineered to provide reliable US-egress access to **Meta Muse AI** (`https://muse.ai/`).

### Key Highlights
- **Raw TLS Passthrough:** End-to-end encrypted transport using `cloudflare:sockets` over WebSockets. Zero inspection by intermediate proxies.
- **US Edge Routing:** Geographically positioned near US-East (Virginia) and Oregon edge POPs to ensure clean US IP presentation.
- **Native Android Proxy Override:** Integrates with `androidx.webkit.ProxyController` for seamless in-app tunneling without VPN permissions or battery drainage.
- **Tactile 3D UI:** Dark-mode isometric visual dashboard rendered directly inside a secure sandbox without external dependencies.
- **Smart Form Orchestration:** Automatically fills email and orchestrates Meta's official login flow.

```bash
# Quick Worker Deployment
cd worker && npm install && npx wrangler deploy
```

---

<div align="center">

**توسعه‌داده‌شده با افتخار توسط [Guts (imgutss)](https://github.com/imgutss)**  
*متن‌باز و منتشرشده تحت مجوز MIT*

<br/>

<a href="https://github.com/imgutss/pol-cloudflare-bridge">
  <img src="https://img.shields.io/badge/GitHub-pol--cloudflare--bridge-181717?style=for-the-badge&logo=github&logoColor=white" />
</a>

</div>
