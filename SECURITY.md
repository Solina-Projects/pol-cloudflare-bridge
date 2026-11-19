# Security Policy

## Supported Versions

| Version | Supported | Notes |
| :--- | :---: | :--- |
| v1.0.x | ✅ | Active production release with official `https://muse.ai/` target |
| < v1.0.0 | ❌ | Obsolete (targeted decommissioned `/access` endpoint) |

---

## 🔒 Cryptographic Architecture & Zero-Knowledge Verification

Pol Cloudflare Bridge operates on strict **Zero-Knowledge End-to-End TLS Passthrough**:

```
[Android Secure WebView] ── TLS 1.3 Handshake ──> [Meta Muse (muse.ai)]
          │                                                  ▲
          └── Encrypted Payload ──> [Cloudflare Worker] ─────┘
                                  (Opaque Byte Forwarding)
```

1. **Client-Originated Handshake:** The TLS handshake is negotiated directly between the local Android WebView engine and Meta's edge servers (`muse.ai:443`).
2. **Opaque Transport:** The Cloudflare Worker uses `cloudflare:sockets` to establish a direct raw TCP stream. No SSL termination, MitM certificates, or decryption keys are present on the worker.
3. **No Key Storage:** Neither session symmetric keys (AES-GCM/CHACHA20-POLY1305) nor asymmetric private keys are accessible to intermediate proxy nodes.
4. **Token Authentication:** The WebSocket upgrade request validates a shared high-entropy authorization header (`x-bridge-token`) to prevent unauthorized relay abuse.

---

## 🚨 Reporting a Vulnerability

We take the security of our users and network infrastructure very seriously.

If you discover a security vulnerability or privacy flaw:
1. **Do NOT open a public GitHub issue.**
2. Send an advisory or report directly to the maintainer via GitHub Security Advisories or email [imgutss@users.noreply.github.com](mailto:imgutss@users.noreply.github.com).
3. Include detailed steps to reproduce, network packet dumps, or proof-of-concept scripts.
4. We aim to acknowledge reports within 48 hours and provide a coordinated patch timeline.
