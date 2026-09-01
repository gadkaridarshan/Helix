#!/usr/bin/env bash
# Install Helix 1.0.0 from a clone of this public release repo.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
VSIX="$ROOT/helix-1.0.0.vsix"

if [[ ! -f "$VSIX" ]]; then
  echo "VSIX not found at $VSIX"
  exit 1
fi

installed=0
for cli in cursor code; do
  if command -v "$cli" >/dev/null 2>&1; then
    echo "Installing via $cli ..."
    "$cli" --install-extension "$VSIX" --force
    installed=1
  fi
done

if [[ "$installed" -eq 0 ]]; then
  echo "Neither 'cursor' nor 'code' found on PATH."
  echo "Install manually: Extensions → … → Install from VSIX → $VSIX"
  exit 1
fi

echo "Done. Reload the window: Developer: Reload Window"
