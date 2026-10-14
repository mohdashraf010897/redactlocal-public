#!/usr/bin/env bash
set -e

# RedactLocal 1-Line Zero-Friction macOS Installer
# Usage: curl -fsSL https://mohdashraf010897.github.io/redactlocal-public/install.sh | bash

echo "=========================================================="
echo " 🍏 RedactLocal — 100% Offline PDF Surgical Redaction"
echo "=========================================================="

if [ "$(uname)" != "Darwin" ]; then
  echo "Error: This automated 1-line installer is for macOS only."
  echo "For Windows, visit: https://github.com/mohdashraf010897/redactlocal-public"
  exit 1
fi

TMP_DIR=$(mktemp -d)
trap 'rm -rf "${TMP_DIR}"; hdiutil detach /Volumes/RedactLocal 2>/dev/null || true' EXIT

DMG_URL="https://github.com/mohdashraf010897/redactlocal-public/releases/download/v1.0.0/RedactLocal.dmg"

echo "→ [1/4] Downloading latest RedactLocal release..."
curl -fSL "${DMG_URL}" -o "${TMP_DIR}/RedactLocal.dmg" --progress-bar

echo "→ [2/4] Mounting disk image..."
hdiutil detach /Volumes/RedactLocal 2>/dev/null || true
hdiutil attach "${TMP_DIR}/RedactLocal.dmg" -nobrowse -quiet -mountpoint /Volumes/RedactLocal

echo "→ [3/4] Installing RedactLocal into /Applications..."
rm -rf /Applications/RedactLocal.app
cp -R /Volumes/RedactLocal/RedactLocal.app /Applications/

hdiutil detach /Volumes/RedactLocal -quiet -force || true

echo "→ [4/4] Removing Gatekeeper download quarantine..."
xattr -cr /Applications/RedactLocal.app

echo "=========================================================="
echo " ✓ RedactLocal successfully installed into /Applications!"
echo " Launching RedactLocal..."
echo "=========================================================="
open /Applications/RedactLocal.app
