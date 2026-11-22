# Changelog

All notable changes to **Solina CF-Bridge** (a fork of Pol Cloudflare Bridge) will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Solina CF-Bridge 1.0.0] - 2026-11-21

### 🚀 Added
- **Multi-AI dashboard:** Gemini, Google AI Studio, Grok, ChatGPT, Claude, DeepSeek and Perplexity alongside Muse.
- **Gemini keyboard fix wired in:** upstream's GeminiInsets ported to smali and hooked into the in-app browser's `onPageStarted` (device testing pending).
- **Upstream v1.0.1 sync:** docs, changelog, v1.0.1 patches and cover art synced from imgutss.

### 🔀 Changed
- **Rebrand:** package `app.pol.bridge` → `app.solina.cfbridge`, app name → Solina CF-Bridge, version 1.0.0 (versionCode 3).
- **Signing:** persistent Solina release keystore; APKs are zipaligned (fixes install error -124).
- **Docs:** README/CHANGELOG rebranded to Solina CF-Bridge; download links point at this fork's releases.

### ℹ️ Notes
- Upstream Antigravity engine is not ported. Offline chat shipped in this fork (Qwen2.5-0.5B, device-confirmed downloading). Upstream 1.0.2 features (custom API model path, Fable retry, artifact download) live only in the upstream APK and are not in the open-source tree.
- Upstream entries below are historical, from Pol Cloudflare Bridge by imgutss.

## [Upstream 1.0.2] - 2026-11-22

### ℹ️ Notes (upstream release — docs-only sync, no code in the repo)
- Upstream released 1.0.2: custom API model improvements, a bounded Fable retry, and an experimental artifact download path. The upstream commit changed docs only; the 1.0.2 app changes are NOT in the open-source tree, so they are NOT in this fork.
- Improve custom text-model tool-call and conversation translation; tested with mock servers and some user-reported real models.
- Add a bounded Fable retry after the specific Relay reservation quota error; it can still fail or truncate output.
- Add an experimental artifact blob/data download path (32 MiB limit); not validated on an Android device.
- Public APK contains an extractable bridge credential; treat it as exposed. Image-only Qwen endpoints are not supported as a chat model. The APK internal version name remains 1.0.1, version code 38.
- Custom-model output cap is 8192 tokens, with a 4096 fallback if provider metadata is absent.

---

## [1.0.1] - 2026-11-20

### 🚀 Added
- **Offline text chat:** ARM64 CPU inference with separately downloaded compatible models, progressive output and loaded-model retention between messages.
- **Model management:** Horizontal model cards, deletion controls, and Markdown rendering.
- **Manual API settings:** Enter the service URL, model name and API key manually.
- **Gemini integration:** In-app browser entry with updated keyboard inset handling.

### 🛡️ Fixed
- Addressed the Gemini keyboard closing immediately in the in-app browser. The user confirmed the new build on a device; broader device testing is pending.
- Reverted the experimental offline image/GPU changes after reports of offline crashes; this release is text-only for offline inference.

### ℹ️ Notes
- Cloudflare egress country/IP is not guaranteed. Not every provider or app path has been verified to use the tunnel.
- Offline photos, camera and GPU acceleration are not included. Models are downloaded separately.
- The current repository contains selected patch sources, not a full reproducible source tree for the release APK.
- Older release notes below are historical; their claims of guaranteed US egress are not a guarantee for this release.

---

## [1.0.0] - 2026-11-19

### 🚀 Added
- **Official Public Release:** Complete signed Android APK package (`Pol-Cloudflare-Bridge.apk`) targeting Android 8.0 through Android 15.
- **US Egress Placement Engine:** Routed Cloudflare Workers to `aws:us-east-1` (Virginia) and Oregon POPs to guarantee clean US IP presentation.
- **Tactile 3D Isometric UI:** Modern dark-themed dashboard built with zero external CDN dependencies, fully optimized for touch scrolling.
- **Smart Login Orchestrator:** Automatic detection and email auto-fill assistance for official Meta Muse authentication.
- **Standalone Cloudflare Worker Package:** Ready-to-deploy worker with `wrangler.toml` and direct TCP socket tunneling via `cloudflare:sockets`.

### 🛡️ Fixed
- **Resolved HTTP 401 Unauthorized:** Updated target endpoint from deprecated `/access` URL to official public root `https://muse.ai/` (HTTP 200 OK).
- **Probing False Positives:** Fixed background health check probes that triggered false 401 alerts on restricted paths.
- **Mobile Viewport Stability:** Eliminated scroll jitter and viewport bounce on Android touch devices.

### 🔒 Security
- Verified Zero-Knowledge End-to-End TLS 1.3 passthrough; intermediate worker nodes forward opaque encrypted TCP streams without MitM inspection.
