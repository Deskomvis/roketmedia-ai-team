#!/usr/bin/env bash
set -euo pipefail
PACK="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CEO_HOME=""
REPLACE=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --ceo-home) CEO_HOME="$2"; shift 2;;
    --replace) REPLACE=1; shift;;
    *) echo "Unknown option $1" >&2; exit 2;;
  esac
done
if [[ -z "$CEO_HOME" ]]; then
 echo 'Please specify --ceo-home /path/to/existing/CEO/profile' >&2; exit 2
fi
if [[ ! -d "$CEO_HOME" ]]; then
 echo "CEO profile home missing: $CEO_HOME" >&2; exit 2
fi
install_one() {
 local slug="$1" dest="$2" src="$PACK/profiles/$1/SOUL.md"
 if [[ ! -d "$dest" ]]; then echo "SKIP $slug: profile directory not found: $dest"; return; fi
 if [[ -e "$dest/SOUL.md" ]]; then
   if [[ $REPLACE -eq 0 ]]; then echo "SKIP $slug: existing SOUL.md (use --replace for backup and overwrite)"; return; fi
   cp -p "$dest/SOUL.md" "$dest/SOUL.md.backup.$(date +%Y%m%d%H%M%S)"
 fi
 cp "$src" "$dest/SOUL.md"
 echo "INSTALLED $slug -> $dest/SOUL.md"
}
install_one ai-ceo "$CEO_HOME"
for slug in product-hunter product-validator offer-strategist creative-director creative-producer landing-page-builder media-buyer ads-optimizer sales-closer finance-controller data-qa-analyst; do
 install_one "$slug" "$HOME/.hermes/profiles/$slug"
done
