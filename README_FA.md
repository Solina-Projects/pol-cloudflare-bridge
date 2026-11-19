<div align="center">

# 🌉 پل کلودفلر · Pol Cloudflare Bridge
### تونل امن و پرسرعت WebSocket با خروجی آمریکا برای دسترسی به Meta Muse AI
**کلاینت اختصاصی اندروید · پردازش لبه‌ای کلودفلر · رابط کاربری سه‌بعدی**

<br/>

<a href="https://github.com/imgutss/pol-cloudflare-bridge/releases/download/v1.0.0/Pol-Cloudflare-Bridge.apk">
  <img src="https://img.shields.io/badge/دانلود%20مستقیم%20APK-نسخه%20v1.0.0-FF8A2A?style=for-the-badge&logo=android&logoColor=white" alt="Download APK" />
</a>
<a href="./README.md">
  <img src="https://img.shields.io/badge/🇬🇧%20English%20Docs-Switch%20to%20English-2563EB?style=for-the-badge" alt="English Documentation" />
</a>
<a href="https://github.com/imgutss/pol-cloudflare-bridge/stargazers">
  <img src="https://img.shields.io/badge/⭐%20Star%20Repo-پروژه%20را%20ستاره%20دهید-F59E0B?style=for-the-badge" alt="Stars" />
</a>

<br/><br/>

<img src="https://img.shields.io/badge/اندروید-8.0%20تا%2015-3DDC84?style=flat-square&logo=android&logoColor=white" />
<img src="https://img.shields.io/badge/کلودفلر-Workers%20Edge-F38020?style=flat-square&logo=cloudflare&logoColor=white" />
<img src="https://img.shields.io/badge/پروتکل-TLS%20over%20WebSocket-0EA5E9?style=flat-square&logo=websocket&logoColor=white" />
<img src="https://img.shields.io/badge/خروجی-آی‌پی%20تمیز%20آمریکا-8B5CF6?style=flat-square" />
<img src="https://img.shields.io/badge/امنیت-Zero%20Knowledge%20E2EE-10B981?style=flat-square" />
<img src="https://img.shields.io/badge/مقصد-Meta%20Muse%20(muse.ai)-0081FB?style=flat-square&logo=meta&logoColor=white" />

</div>

---

<div dir="rtl">

## 🌟 معرفی

**پل کلودفلر (Pol Cloudflare Bridge)** یک راهکار اختصاصی و امن برای عبور از تحریم‌های منطقه‌ای و اتصال مستقیم به سرویس هوش مصنوعی **[Meta Muse](https://muse.ai/)** بدون نیاز به فیلترشکن‌های عمومی است.

<table width="100%">
  <thead>
    <tr>
      <th align="right" width="30%">ویژگی</th>
      <th align="right" width="70%">توضیحات</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="right"><b>🇺🇸 خروجی خالص آمریکا</b></td>
      <td align="right">خروجی مستقیم از دیتاسنترهای ویرجینیا و اورگان جهت دور زدن قطعی تحریم‌های هوش مصنوعی متا.</td>
    </tr>
    <tr>
      <td align="right"><b>🔒 رمزنگاری انتها‌به‌انتها</b></td>
      <td align="right">انتقال دست‌نخوردهٔ TLS 1.3 (کلودفلر فقط حامل بایت‌هاست و به محتوا دسترسی ندارد).</td>
    </tr>
    <tr>
      <td align="right"><b>⚡ بدون افت سرعت گوشی</b></td>
      <td align="right">تونل فقط برای مرورگر داخلی فعال است و ترافیک کلی گوشی و باتری را درگیر نمی‌کند.</td>
    </tr>
    <tr>
      <td align="right"><b>🎨 رابط کاربری سه‌بعدی</b></td>
      <td align="right">طراحی ایزومتریک با شتاب‌دهندهٔ سخت‌افزاری و تم تاریک بدون لرزش در اسکرول لمسی.</td>
    </tr>
    <tr>
      <td align="right"><b>🤖 دستیار هوشمند ورود</b></td>
      <td align="right">شناسایی خودکار فرم ورود Muse و تکمیل ایمیل کاربر بدون ذخیره رمز.</td>
    </tr>
  </tbody>
</table>

---

## 🏗️ معماری شبکه

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

## 🚀 دانلود و نصب

| نسخه | حجم | پیش‌نیاز | لینک دانلود |
| :---: | :---: | :---: | :---: |
| **v1.0.0 (رسمی)** | ۱.۴ مگابایت | اندروید ۸ تا ۱۵ | [📥 **دانلود مستقیم فایل APK**](https://github.com/imgutss/pol-cloudflare-bridge/releases/download/v1.0.0/Pol-Cloudflare-Bridge.apk) |

> 📦 جهت مشاهده گزارش تغییرات یا بیلدهای گذشته می‌توانید به [صفحه Releases در گیت‌هاب](https://github.com/imgutss/pol-cloudflare-bridge/releases) مراجعه فرمایید.

---

## 🛠️ راه‌اندازی ورکر شخصی (اختیاری)

سورس ورکر در پوشهٔ `worker/` قرار دارد و به‌راحتی روی اکانت رایگان کلودفلر شما مستقر می‌شود:

```bash
cd worker
npm install
npx wrangler secret put BRIDGE_TOKEN   # کلید امنیتی دلخواه خود را وارد کنید
npx wrangler deploy
```

سپس آدرس ورکر خود (`https://your-worker.workers.dev`) و کلید تنظیم‌شده را در بخش تنظیمات دستی اپلیکیشن وارد کنید.

---

## ❓ پرسش‌های متداول

<details>
<summary><b>آیا ورکر کلودفلر اطلاعات یا رمز عبور من را می‌بیند؟</b></summary>
<br/>
<b>خیر، به هیچ وجه.</b> ترافیک دارای رمزنگاری کامل انتها‌به‌انتها (E2EE) بر بستر TLS است. کلیدهای رمزگشایی فقط درون مرورگر گوشی شما و سرور اصلی متا قرار دارند.
</details>

<details>
<summary><b>دلیل خطای ۴۰۱ قبلی چه بود؟</b></summary>
<br/>
متا اخیراً اندپوینت منسوخ‌شدهٔ <code>/access</code> را خصوصی کرده بود. در این نسخهٔ نهایی، آدرس مقصد به آدرس عمومی و پایدار <code>https://muse.ai/</code> تغییر یافته و پاسخ HTTP 200 دریافت می‌کند.
</details>

<details>
<summary><b>آیا استفاده از برنامه هزینه‌ای دارد؟</b></summary>
<br/>
<b>خیر، ۱۰۰٪ رایگان.</b> پلان استاندارد کلودفلر روزانه ۱۰۰ هزار درخواست رایگان ارائه می‌دهد که برای استفاده‌های شخصی کاملاً کافی است.
</details>

</div>

---

<div align="center">

**توسعه‌داده‌شده توسط [Guts (imgutss)](https://github.com/imgutss)** • *مجوز متن‌باز MIT*

<br/>

[راهنمای مشارکت](./CONTRIBUTING.md) • [خط‌مشی امنیت](./SECURITY.md) • [تاریخچه تغییرات](./CHANGELOG.md) • [مرام‌نامه اخلاقی](./CODE_OF_CONDUCT.md)

<br/><br/>

<a href="https://github.com/imgutss/pol-cloudflare-bridge">
  <img src="https://img.shields.io/badge/GitHub-pol--cloudflare--bridge-181717?style=for-the-badge&logo=github&logoColor=white" />
</a>

</div>
