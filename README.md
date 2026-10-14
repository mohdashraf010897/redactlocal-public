# RedactLocal Public Hub

> **Privacy-first, 100% offline PDF surgical redaction & client-side leak detector.**  
> Public home for RedactLocal's privacy policy, support documentation, compliance disclosures, and the Free Web Leak Checker.

[![Web Leak Checker](https://img.shields.io/badge/Live%20Tool-Free%20Leak%20Checker-059669?style=flat&logo=shield)](https://mohdashraf010897.github.io/redactlocal-public/)
[![Zero Uploads](https://img.shields.io/badge/Privacy-100%25%20Client--Side-blue)](PRIVACY.md)
[![Federal Standard](https://img.shields.io/badge/Compliance-FRCP%205.2%20%7C%20HIPAA-success)](TERMS.md)

---

## What is RedactLocal?

RedactLocal is a deterministic desktop utility engineered for litigation paralegals, accountants (CPAs), and healthcare compliance officers. It replaces Adobe Acrobat Pro's $240/year cloud-tethered subscription with a **$49 one-time lifetime license** that operates 100% offline with zero cloud telemetry.

This public repository hosts:
1. **[Free PDF Redaction Leak Checker](https://mohdashraf010897.github.io/redactlocal-public/)**: A zero-upload in-browser Progressive Web App that scans PDFs for unredacted underlying text streams, interactive form field leaks (`/V`), incremental revision histories (`/Prev`), and hidden author metadata.
2. **[Privacy Policy](PRIVACY.md)**: Our strict zero-data-collection commitment.
3. **[Support Guide](SUPPORT.md)**: Frequently asked questions and issue reporting.
4. **[Terms of Service](TERMS.md)**: Perpetual offline license terms and compliance warranties.
5. **[Security Policy](SECURITY.md)**: Vulnerability disclosure guidelines.

RedactLocal Desktop runs 100% offline on macOS and Windows with zero cloud telemetry.

---

## 📥 Downloads (v1.0.0 Stable)

Download the native, 100% offline desktop application directly:

| Platform | Format | Size | Download Link |
|---|---|---|---|
| **macOS (Apple Silicon & Intel)** | Disk Image (`.dmg`) | 7.4 MB | [🍏 **Download RedactLocal.dmg**](https://github.com/mohdashraf010897/redactlocal-public/releases/download/v1.0.0/RedactLocal.dmg) |
| **macOS (Apple Silicon & Intel)** | Installer (`.pkg`) | 7.0 MB | [📦 **Download RedactLocal-Installer.pkg**](https://github.com/mohdashraf010897/redactlocal-public/releases/download/v1.0.0/RedactLocal-Installer.pkg) |
| **Web / Air-Gapped Browser** | PWA Web App | Client-side | [🌐 **Launch Web Leak Checker**](https://mohdashraf010897.github.io/redactlocal-public/) |
| **Windows 10 / 11** | Installer (`.msi`) | Packaging | *GitHub Actions automated build in progress* |

> [!tip] **First-time macOS Launch Note (Gatekeeper)**  
> Because RedactLocal is an independent open-source utility operating with 100% air-gapped privacy (zero remote tracking):  
> - **From `.pkg`**: Double-click the installer and follow the prompt to install directly into `/Applications`.  
> - **From `.dmg`**: Drag `RedactLocal` to `/Applications`. If macOS displays *"cannot be opened because developer cannot be verified"*, open **System Settings → Privacy & Security**, scroll to **Security**, and click **"Open Anyway"** (or run `xattr -cr /Applications/RedactLocal.app`).

---

## Try the Free Web Leak Checker

You can audit any "redacted" PDF right now in your browser without uploading it to any server:
👉 **[Launch RedactLocal Leak Checker](https://mohdashraf010897.github.io/redactlocal-public/)**

- **Runs in browser memory via WebAssembly**: Your document never touches a remote server.
- **Audits 5 Critical Leak Channels**: Metadata, text glyph streams, `/Prev` revision pointers, AcroForm `/Widget` values, and XFA datasets.
- **Works Offline**: Installable as a Progressive Web App (PWA) with full airplane-mode caching.

---

## Compliance Guarantees

RedactLocal is engineered to satisfy strict federal and statutory data protection rules:
- **FRCP Rule 5.2**: Privacy Protection For Filings Made with the Court (Social Security Numbers, taxpayer IDs, financial account numbers, dates of birth, minor children names).
- **HIPAA Safe Harbor**: Complete excision of 18 statutory Protected Health Information (PHI) identifiers.
- **Fail-Closed Eradication**: Bytecode operator deletion rather than visual overlay blackouts.

---

## Author & Maintainer

Maintained by **Mohd Ashraf** ([@mohdashraf010897](https://github.com/mohdashraf010897)).
For support, open an issue in this repository.
