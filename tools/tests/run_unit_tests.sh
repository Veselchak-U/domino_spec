#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
project_root="$(cd -- "$script_dir/../.." && pwd)"
cd -- "$project_root"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter CLI is required in PATH." >&2
  exit 127
fi

exec flutter test "$@"
