<div align="center">

# 🌉 پل کلودفلر · Pol Cloudflare Bridge
### تونل امن و پرسرعت WebSocket با خروجی آمریکا برای دسترسی به Meta Muse AI
**Android Native Proxy Client · Cloudflare Workers Edge · 3D Isometric UI**

<br/>

<a href="https://github.com/imgutss/pol-cloudflare-bridge/releases/download/v1.0.0/Pol-Cloudflare-Bridge.apk">
  <img src="https://img.shields.io/badge/دانلود%20مستقیم%20APK-نسخه%20v1.0.0-FF8A2A?style=for-the-badge&logo=android&logoColor=white" alt="Download APK" />
</a>
<a href="https://github.com/imgutss/pol-cloudflare-bridge/stargazers">
  <img src="https://img.shields.io/badge/⭐%20Star%20Repo-پروژه%20را%20ستاره%20دهید-F59E0B?style=for-the-badge" alt="Stars" />
</a>

<br/><br/>

<img src="https://img.shields.io/badge/Android-8.0%20تا%2015-3DDC84?style=flat-square&logo=android&logoColor=white" />
<img src="https://img.shields.io/badge/Cloudflare-Workers%20Edge-F38020?style=flat-square&logo=cloudflare&logoColor=white" />
<img src="https://img.shields.io/badge/Tunnel-TLS%20over%20WebSocket-0EA5E9?style=flat-square&logo=websocket&logoColor=white" />
<img src="https://img.shields.io/badge/Egress-US%20Clean%20IP-8B5CF6?style=flat-square" />
<img src="https://img.shields.io/badge/Security-Zero%20Knowledge%20E2EE-10B981?style=flat-square" />
<img src="https://img.shields.io/badge/Target-Meta%20Muse%20(muse.ai)-0081FB?style=flat-square&logo=meta&logoColor=white" />

<br/><br/>

<a href="#about"><img src="https://img.shields.io/badge/🌟%20معرفی-1e293b?style=for-the-badge&logoColor=white" /></a>
<a href="#download"><img src="https://img.shields.io/badge/🚀%20دانلود-1e293b?style=for-the-badge&logoColor=white" /></a>
<a href="#architecture"><img src="https://img.shields.io/badge/🏗️%20معماری-1e293b?style=for-the-badge&logoColor=white" /></a>
<a href="#self-host"><img src="https://img.shields.io/badge/🛠️%20ورکر-1e293b?style=for-the-badge&logoColor=white" /></a>
<a href="#faq"><img src="https://img.shields.io/badge/❓%20سوالات-1e293b?style=for-the-badge&logoColor=white" /></a>

</div>

---

<span id="about"></span>

## 🌟 معرفی سریع

**پل کلودفلر (Pol Cloudflare Bridge)** کلاینت اختصاصی اندروید و تونل لبهٔ شبکه برای عبور از تحریم‌های منطقه‌ای و ورود مستقیم به هوش مصنوعی **[Meta Muse](https://muse.ai/)** بدون نیاز به VPN عمومی است.

| ویژگی | توضیح |
| :--- | :--- |
| 🇺🇸 **خروجی خالص آمریکا** | خروجی مستقیم از دیتاسنترهای ویرجینیا و اورگان جهت دور زدن قطعی تحریم متا |
| 🔒 **رمزنگاری انتها‌به‌انتها** | انتقال دست‌نخوردهٔ `TLS 1.3` (کلودفلر فقط حامل بایت‌هاست و محتوا را نمی‌بیند) |
| ⚡ **تونل در سطح برنامه** | بدون تغییر ترافیک کل گوشی؛ مصرف باتری ناچیز و سرعت پینگ بالا |
| 🎨 **رابط سه‌بعدی نئون** | طراحی ایزومتریک روان، تم تاریک بدون لگ و لرزش در اسکرول لمسی |
| 🤖 **دستیار هوشمند ورود** | شناسایی خودکار فرم ورود Muse و تکمیل ایمیل |

---

<span id="architecture"></span>

## 🏗️ معماری شبکه (دیاگرام شاخه‌ای)

```mermaid
graph TD
    Client["📱 کلاینت اندروید (Pol Bridge)"] --> UI["🎨 داشبورد سه‌بعدی ایزومتریک"]
    Client --> WebView["🌐 مرورگر ایزوله داخلی (Secure WebView)"]
    
    WebView -->|"HTTP CONNECT"| Proxy["🔒 هسته پروکسی محلی (127.0.0.1)"]
    
    Proxy -->|"WSS Tunnel + Token<br/>رمزنگاری سرتاسری TLS"| Worker["☁️ ورکر لبه کلودفلر (Cloudflare Worker)"]
    
    Worker -->|"cloudflare:sockets"| US_East["🇺🇸 خروجی شرق آمریکا (Virginia)"]
    Worker -->|"cloudflare:sockets"| US_West["🇺🇸 خروجی غرب آمریکا (Oregon)"]
    
    US_East -->|"Direct TCP 443"| Target["🤖 سرور هوش مصنوعی Meta Muse<br/>https://muse.ai/"]
    US_West -->|"Direct TCP 443"| Target

    classDef c1 fill:#1e293b,stroke:#0ea5e9,stroke-width:2px,color:#f8fafc;
    classDef c2 fill:#312e81,stroke:#818cf8,stroke-width:2px,color:#f8fafc;
    classDef c3 fill:#431407,stroke:#f97316,stroke-width:2px,color:#f8fafc;
    classDef c4 fill:#064e3b,stroke:#10b981,stroke-width:2px,color:#f8fafc;

    class Client,UI,WebView c1;
    class Proxy,Worker c2;
    class US_East,US_West c3;
    class Target c4;
```

---

<span id="download"></span>

## 🚀 دانلود و نصب

| نسخه | حجم | پیش‌نیاز | لینک مستقیم |
| :---: | :---: | :---: | :---: |
| **v1.0.0 (رسمی)** | ۱.۴ مگابایت | اندروید ۸ تا ۱۵ | [📥 **دانلود مستقیم فایل APK**](https://github.com/imgutss/pol-cloudflare-bridge/releases/download/v1.0.0/Pol-Cloudflare-Bridge.apk) |

> 💡 همچنین می‌توانید تمامی بیلدهای منتشرشده را در [بخش Releases مخزن](https://github.com/imgutss/pol-cloudflare-bridge/releases) مشاهده فرمایید.

---

<span id="self-host"></span>

## 🛠️ راه‌اندازی ورکر شخصی (اختیاری)

کد ورکر داخل پوشهٔ `worker/` قرار دارد و در ۶۰ ثانیه روی اکانت رایگان کلودفلر شما مستقر می‌شود:

```bash
cd worker
npm install
npx wrangler secret put BRIDGE_TOKEN   # کلید دلخواه خود را وارد کنید
npx wrangler deploy
```

سپس آدرس ورکر (`https://your-worker.workers.dev`) و توکن خود را در اپلیکیشن وارد کنید.

---

<span id="faq"></span>

## ❓ پرسش‌های متداول

<details>
<summary><b>آیا ورکر اطلاعات یا رمز عبور من را می‌بیند؟</b></summary>
<br/>
<b>خیر.</b> تمام ارتباط با پروتکل TLS رمزگذاری می‌شود. کلیدهای رمزگشایی فقط در مرورگر گوشی شما و سرور متا معتبر است.
</details>

<details>
<summary><b>دلیل ارور ۴۰۱ قبلی چه بود؟</b></summary>
<br/>
متا اندپوینت قدیمی <code>/access</code> را خصوصی کرده بود. در این نسخه مقصد به آدرس اصلی و عمومی <code>https://muse.ai/</code> تغییر یافت که با HTTP 200 در دسترس است.
</details>

<details>
<summary><b>آیا هزینه دارد؟</b></summary>
<br/>
<b>خیر، ۱۰۰٪ رایگان.</b> پلان استاندارد کلودفلر روزانه ۱۰۰ هزار درخواست رایگان ارائه می‌دهد.
</details>

---

<div align="center">

**توسعه‌داده‌شده توسط [Guts (imgutss)](https://github.com/imgutss)** • *مجوز متن‌باز MIT*

<br/>

<a href="https://github.com/imgutss/pol-cloudflare-bridge">
  <img src="https://img.shields.io/badge/GitHub-pol--cloudflare--bridge-181717?style=for-the-badge&logo=github&logoColor=white" />
</a>

</div>
