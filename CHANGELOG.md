# Changelog

All notable changes to **Pol Cloudflare Bridge** will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
