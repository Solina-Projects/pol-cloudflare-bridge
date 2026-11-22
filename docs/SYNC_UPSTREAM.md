# Solina CF-Bridge — upstream sync guide

> **خلاصهٔ فارسی:** این سند می‌گوید کدام فایل‌ها مال ماست، کدام مال پروژهٔ اصلی (Pol Cloudflare Bridge) و موقع آپدیت از مرجع، تغییرات ما چطور بدون خراب‌شدن دوباره اعمال شوند. همهٔ تغییرات ما داخل بلوک‌های مشخص با برچسب `SOLINA` هستند؛ موقع سینک، همان بلوک‌ها را از فایل قدیمی برمی‌داریم و سر جای مشخص‌شده در فایل جدید می‌گذاریم. هیچ‌وقت فایل جدید مرجع را مستقیم روی فایل ما کپی نکنید — تغییرات ما پاک می‌شود.

## 1. File map

| Path in repo | Origin | Notes |
|---|---|---|
| `web-ui/index.html` | **shared** (upstream + Solina blocks) | The home UI. Upstream's sections 1–4 are kept byte-verbatim inside Solina screen wrappers. This file and `android/assets/ui/index.html` must stay byte-identical. |
| `android/assets/ui/index.html` | **shared** (same as above) | Copy of `web-ui/index.html`. Always copy, never edit separately. |
| `android/smali/app/solina/cfbridge/*.smali` | **ours** (rewritten from upstream `app/pol/bridge`) | Package rename + GeminiInsets + LlmBridge/PolNative. Upstream smali changes need a manual port (see §5). |
| `android/lib/arm64-v8a/libpol_llm.so` | **ours** | Built in CI from pinned llama.cpp. Not in upstream. |
| `android/native/*` | **ours** | CMake inputs for the `.so` build. Not in upstream. |
| `android/patches/v1.0.1/*` | **upstream** (synced verbatim) | Reference snippets only, not wired into the build. |
| `worker/src/index.js` | **upstream** (synced verbatim) | No Solina changes. Safe to overwrite from upstream. |
| `README.md`, `README_FA.md`, `CHANGELOG.md` | **ours** (rebranded) | Re-apply the rebrand by hand after a sync if upstream changed them. |
| `.github/workflows/build-apk.yml` | **ours** | CI builds the APK from the smali tree. Upstream has no APK workflow. |
| `ui-redesign/quick-settings.js` (this folder) | **ours, not yet in the repo** | Overlay for the in-app browser; see `REPORT.md` for the native hook. Not part of upstream sync. |

## 2. Marker convention

Every Solina addition lives inside a marked block. **Never edit outside a marked
block when touching the shared `index.html`.**

- HTML: `<!-- SOLINA:BEGIN <name> -->` … `<!-- SOLINA:END <name> -->`
- CSS / JS: `/* SOLINA:BEGIN <name> */` … `/* SOLINA:END <name> */`

Each `<name>` is unique per location (e.g. `router-css` in `<style>` vs
`router-js` in `<script>`). A block is moved as a whole; its content is never
edited to fit upstream — if an anchor moved, note it here and update §3.

### Solina blocks in the shared `index.html` (base: upstream `dccb506` + our work to `eee5bef`)

| Block | Location | Anchor (what it sits next to) | Purpose |
|---|---|---|---|
| `personalization-early` | `<head>`, after the `theme-color` meta | `<meta name="theme-color" …>` | Applies saved theme/accent/font before first paint |
| `router-css` | `<style>`, appended at the end | `</style>` | Screen show/hide, hero visibility per screen, step nav |
| `topbar` (CSS) | `<style>`, appended at the end | `</style>` | Sticky header bar styles |
| `welcome` (CSS) | `<style>` | `</style>` | Feature-list styles for the Welcome screen |
| `settings-css` | `<style>` | `</style>` | Settings rows, segmented controls |
| `personalization-theme-light` | `<style>` | `</style>` | Light-theme variable overrides |
| `personalization-accent` | `<style>` | `</style>` | Accent colour overrides |
| `personalization-font` | `<style>` | `</style>` | Large-font overrides |
| `ai-remember-css` | `<style>` | `</style>` | Last-used-AI chip + highlight |
| `topbar` (HTML) | first child of `<main class="app">` | `<main class="app">` | Header: home, title, fullscreen, settings buttons |
| `screen-welcome` | inside `<main>`, before section 1 | `<!-- بخش ۱: … -->` | First-run welcome + guide + app facts + developer Solina |
| `screen-permissions` | inside `<main>`, before section 1 | `<!-- بخش ۱: … -->` | VPN + storage permission explainer |
| `screen-bridge` | wraps upstream section 1 | `<!-- بخش ۱: … -->` … `</section>` | Step 3; section 1 itself is untouched inside |
| `nav-bridge` | inside `screen-bridge`, after section 1 | section 1 `</section>` | Back / continue buttons + step 3 of 5 |
| `screen-ai` | wraps upstream sections 2 + 3 | `<!-- بخش ۲: … -->` … section 3 `</section>` | Step 4; sections 2 and 3 untouched inside |
| `ai-remember-chip` | inside `screen-ai`, after section 3 | section 3 `</section>` | "Last used AI" chip (`#lastAiChip`) |
| `nav-ai` | inside `screen-ai`, after section 3 | section 3 `</section>` | Back / continue buttons + step 4 of 5 |
| `screen-model` | wraps upstream section 4 | `<!-- بخش ۴: … -->` … `</section>` | Step 5; section 4 untouched inside |
| `nav-model` | inside `screen-model`, after section 4 | section 4 `</section>` | Back / settings buttons + step 5 of 5 |
| `screen-settings` | inside `<main>`, after section 4 | `<!-- کادر هشدار نسخه آزمایشی -->` | Settings + personalization + about |
| `router` (HTML) | after the original `</script>` | `</body>` | Second `<script>` block (see below) |
| `router-js` | inside the second `<script>` | — | Screen router + onboarding gating |
| `ai-remember-js` | inside the second `<script>` | — | Remember email + last AI (listeners only; original functions untouched) |
| `settings-js` | inside the second `<script>` | — | Reset/clear/replay-onboarding actions |
| `personalization` | inside the second `<script>` | — | Theme/accent/font setters + persistence |
| `fullscreen-btn` | inside the second `<script>` | — | `bridge://fullscreen?on=1/0` toggle |
| `init` | inside the second `<script>` | — | Startup: prefs → hooks → restore → first screen |

The upstream hero (`#hero`), warning note box and footer were **not moved**;
the hero is only hidden on some screens by `router-css`
(`body[data-screen="…"] #hero`). The `<body>` tag carries a Solina default
attribute `data-screen="welcome"` (changed by the router at runtime).

## 3. Sync procedure (upstream `index.html` → our `index.html`)

Prerequisite: the new upstream file. Fetch it with:

```sh
gh api "repos/imgutss/pol-cloudflare-bridge/contents/web-ui/index.html?ref=<NEW_UPSTREAM_SHA>" --jq '.content' | base64 -d > upstream-new.html
```

(Use `android/assets/ui/index.html` from upstream as a cross-check — upstream
keeps the two identical.)

1. **Extract the Solina blocks from our current file.**
   `web-ui/index.html` in our repo (or `ui-redesign/index.html` in this folder).
   For every block in the table above, cut from its `SOLINA:BEGIN <name>` line
   through its matching `SOLINA:END <name>` line, inclusive. A block that
   contains upstream markup (`screen-bridge`, `screen-ai`, `screen-model`)
   must be extracted **without** the upstream section inside it — take only
   the wrapper opening/closing lines and the `nav-*` / chip blocks.
2. **Start from `upstream-new.html`.** Do not start from our old file.
3. **Re-apply the blocks at their anchors** (see the table). Anchors are
   upstream landmarks: the `theme-color` meta, `</style>`, `<main class="app">`,
   the `<!-- بخش N: … -->` comments, each section's closing `</section>`,
   the `<!-- کادر هشدار … -->` comment, and `</body>`.
   - `screen-bridge` opens before the section-1 comment and closes after
     section 1's `</section>`; `nav-bridge` goes between them.
   - `screen-ai` opens before the section-2 comment and closes after
     section 3's `</section>`; `ai-remember-chip` + `nav-ai` go between.
   - `screen-model` opens before the section-4 comment and closes after
     section 4's `</section>`; `nav-model` goes between.
   - `screen-welcome`, `screen-permissions` go before `screen-bridge`.
   - `screen-settings` goes after `screen-model`, before the warning-note comment.
   - The `<body>` tag gets `data-screen="welcome"`.
4. **If an anchor is missing or a section changed**, stop and reconcile by
   hand: find the new location of the moved section, place the wrapper
   there, and update the anchor in the table above. Never silently drop a
   block. If upstream added a new section, decide where it belongs in the
   flow (usually a new screen) and add a block for it.
5. **Copy the result to both locations**: `web-ui/index.html` and
   `android/assets/ui/index.html` — then verify they are byte-identical
   (`cmp`).
6. **Run the checks** (§4). Fix failures before pushing.
7. **Rebuild via CI** (push → Build APK workflow) and confirm the APK still
   contains the new UI.

## 4. Verification checklist (run after every sync)

```sh
cd ui-redesign   # or wherever the candidate file lives
python3 verify.py            # node --check on all <script> blocks,
                             # HTML tag balance, original ids / bridge://
                             # URLs / functions present, upstream sections
                             # byte-verbatim, markers balanced
cmp web-ui/index.html android/assets/ui/index.html   # both copies identical
```

What `verify.py` checks, in short:

- `node --check` passes on all three `<script>` blocks (head early script,
  original script, Solina second script).
- No unclosed/mismatched HTML tags.
- All 34 element ids from the pre-redesign file are still present.
- All 4 original `bridge://` URLs (`launch`, `check`, `provision`, `llm`)
  and all original JS functions / `window.__llm*` callbacks are present.
- Upstream sections 1–4, the hero, the warning note and the footer are
  byte-verbatim identical to the pre-redesign file.
- Every `SOLINA:BEGIN <name>` has exactly one matching `SOLINA:END <name>`.

## 5. What sync does NOT cover

- **Smali / native code.** Upstream ships apktool output (`android/smali/`).
  Our smali is under the renamed package `app.solina.cfbridge` plus our
  additions (`GeminiInsets`, `LlmBridge`, `PolNative`, the `handleBridgeAction`
  hook). An upstream smali change cannot be applied by copying files — it
  must be ported by hand into our package, then re-verified with the smali
  assembler (see the fix for the `VerifyError` in `handleBridgeAction`:
  never reuse a register that holds a non-`Uri` value on another path).
- **The worker (`worker/src/index.js`).** We have no changes there; overwrite
  from upstream freely, then re-run CI.
- **Docs.** `README.md` / `README_FA.md` / `CHANGELOG.md` are rebranded;
  re-apply the Solina branding by hand after a sync.
- **`quick-settings.js`.** Ours only; upstream has no equivalent. It is not
  referenced by any file in the repo yet (see `REPORT.md`).
