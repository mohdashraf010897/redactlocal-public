# RedactLocal Privacy Policy

Last updated: October 14, 2026

RedactLocal operates no tracking servers and makes zero analytics, crash-reporting, telemetry, or external API requests. It does not send document contents, filenames, hashes, or redaction coordinates to RedactLocal or any third-party service.

## Core Privacy Principle: Zero Uploads

Both the **RedactLocal Desktop Application** and the **Free Web Leak Checker PWA** operate entirely client-side inside device memory:

- **Desktop Application (macOS & Windows)**: Runs inside a strict air-gapped sandbox with network access permanently disabled (`connect-src 'none'`). All WebAssembly processing occurs on local CPU cores.
- **Web Leak Checker PWA**: Runs inside your local browser tab using client-side JavaScript and Mozilla PDF.js WebAssembly. When you drag and drop a document into the scanner, it is read into your browser's local memory (`ArrayBuffer`). **Zero bytes are transmitted over the internet.**

## Data Handled

RedactLocal processes document data solely to execute requested redaction and leak inspection features:

- **Document Content**: PDF streams, character glyph operators, image XObjects, and metadata dictionaries are parsed locally to identify and eradicate sensitive values.
- **Redaction Coordinates**: Bounding box percentages and operator indices are stored only in local session memory.
- **Offline License Key**: If you activate a Pro or Founder license, RedactLocal validates the cryptographic Ed25519 digital signature locally using the Web Crypto API (`crypto.subtle.verify`). The license key is stored in your local application preferences and is never transmitted to an authentication server.
- **Waitlist Pre-Orders (Optional)**: If you voluntarily submit your email address on the web waitlist modal, that contact information is stored in local browser storage (`localStorage`) or sent only when you explicitly submit an outreach inquiry.

## Third-Party Tracking

RedactLocal does not use Google Analytics, cookies, advertising trackers, tracking pixels, or third-party SDKs. 

## Network Permissions

- **Desktop Shell**: Enforces a Content Security Policy (CSP) of `connect-src 'none'`. Network requests fail closed.
- **Service Worker (`sw.js`)**: Caches static assets (`index.html`, `pdf.min.mjs`, icons) locally so the web tool functions seamlessly on airplanes or disconnected laptops without an internet connection.

## Contact

If you have questions regarding this privacy policy or wish to audit our client-side architecture, open an issue in this public repository:
[https://github.com/mohdashraf010897/redactlocal-public/issues](https://github.com/mohdashraf010897/redactlocal-public/issues)
