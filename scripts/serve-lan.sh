#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_dir="$(cd "$script_dir/.." && pwd)"
cd "$repo_dir"

bundle_bin="${BUNDLE_BIN:-$(command -v bundle || true)}"
if [ -z "$bundle_bin" ]; then
  echo "Error: bundle not found in PATH (set BUNDLE_BIN to override)." >&2
  exit 1
fi

exec "$bundle_bin" exec jekyll serve --host 0.0.0.0 --port 4000
