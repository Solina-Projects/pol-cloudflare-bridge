# Contributing to Pol Cloudflare Bridge

Thank you for your interest in contributing to **Pol Cloudflare Bridge**! We welcome contributions from developers, security researchers, and designers worldwide.

---

## 📋 Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](./CODE_OF_CONDUCT.md). Please treat all community members with respect and kindness.

---

## 🚀 How to Contribute

### 1. Reporting Bugs
- Check the [existing issues](https://github.com/imgutss/pol-cloudflare-bridge/issues) to ensure your bug hasn't already been reported.
- Open a new issue with a clear title and detailed reproduction steps, device model, Android version, and expected vs. actual behavior.

### 2. Suggesting Features
- We love ideas that enhance tunneling performance, encryption, UI aesthetics, or bypass reliability.
- Open a feature request issue describing the rationale, use case, and suggested implementation.

### 3. Submitting Pull Requests
1. Fork the repository and create a new branch:
   ```bash
   git checkout -b feature/amazing-feature
   ```
2. Follow code formatting guidelines defined in `.editorconfig`.
3. Test your changes locally (for worker code: `npm run dev` via Wrangler).
4. Commit with descriptive commit messages following Conventional Commits (`feat: ...`, `fix: ...`, `docs: ...`).
5. Push to your fork and submit a Pull Request against the `main` branch.

---

## 🛠️ Development Setup

### Cloudflare Worker
```bash
cd worker
npm install
npx wrangler dev
```

### Web UI
The 3D Isometric dashboard is located in `web-ui/index.html`. You can open it in any modern browser directly without build tools.

---

## 📄 License
By contributing to this repository, you agree that your contributions will be licensed under the project's [MIT License](./LICENSE).
