#!/usr/bin/env bash
# Download helix-1.0.0.vsix from GitHub and install into Cursor or VS Code.
set -euo pipefail
VERSION="1.0.0"
VSIX_URL="https://github.com/gadkaridarshan/Helix/raw/main/helix-${VERSION}.vsix"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "Downloading Helix ${VERSION} ..."
curl -fsSL "$VSIX_URL" -o "$TMP/helix.vsix"

for cli in cursor code; do
  if command -v "$cli" >/dev/null 2>&1; then
    echo "Installing via $cli ..."
    "$cli" --install-extension "$TMP/helix.vsix" --force
    echo ""
    echo "Done. Run **Developer: Reload Window** in $cli."
    exit 0
  fi
done

echo "Neither 'cursor' nor 'code' found on PATH."
echo "Downloaded VSIX: $TMP/helix.vsix"
echo "Install manually: Extensions → … → Install from VSIX"
exit 1
