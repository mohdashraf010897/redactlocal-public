# RedactLocal Support

For help with RedactLocal or the Free Web Leak Checker, [open an issue](https://github.com/mohdashraf010897/redactlocal-public/issues/new) in this public repository. A GitHub account is required to post.

## Important Privacy Warning for Public Issues
⚠️ **DO NOT post unredacted documents, confidential client records, real Social Security Numbers, patient health records, or private personal data in a public GitHub issue.**

If you encounter a PDF that fails verification or throws an error:
1. Re-test using a sanitized or synthetic document that replicates the issue.
2. Note the PDF version (e.g. PDF 1.4, 1.7, 2.0).
3. Note whether the document is born-digital text, interactive AcroForm, or a 300 DPI scanned image.
4. Report the operating system and browser version.

---

## Frequently Asked Questions (FAQ)

### 1. Does RedactLocal upload my files to any cloud server?
**No.** Both the Desktop application and the Web Leak Checker operate 100% locally in your device's memory. You can turn off your Wi-Fi, disconnect your internet cable, and audit or redact files in complete airplane mode.

### 2. Why does Apple Preview or Microsoft Word fail at redaction?
Drawing a black box in everyday office software only adds a visual layer on top of the text. The underlying characters remain inside the PDF bytecode stream. Anyone can press `Cmd+C` or use a free text extractor to pull out the secret words. RedactLocal surgically cuts the characters out of the bytecode stream and permanently burns out underlying image pixels.

### 3. How does the offline license work?
RedactLocal uses asymmetric Ed25519 digital cryptography. When you purchase a license, you receive a tamper-evident `.rlkey` certificate. The application validates the digital signature locally on your computer with zero network calls. You never have to worry about authentication servers going down or recurring annual fees.

### 4. What are the system requirements?
- **Web Leak Checker**: Any modern web browser (Chrome, Edge, Safari, Firefox) with WebAssembly enabled.
- **Desktop Application**: macOS 12+ (Apple Silicon & Intel) and Windows 10/11 (64-bit).

---

For licensing inquiries, firm invoicing, or enterprise support, please reach out via GitHub issues or your authorized account representative.
