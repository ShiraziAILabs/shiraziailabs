#!/bin/sh
# Cloudflare Pages build: publish only explicitly approved public assets.
# Do not copy the repository root, private research, source notes, or drafts.
set -eu

OUT="dist"
rm -rf "$OUT"

copy_public() {
  src="$1"
  if [ ! -f "$src" ]; then
    printf 'Missing approved public file: %s\n' "$src" >&2
    exit 1
  fi
  mkdir -p "$OUT/$(dirname "$src")"
  cp "$src" "$OUT/$src"
}

# Every route must be explicitly approved before it can be deployed.
for file in \
  index.html \
  404.html \
  robots.txt \
  sitemap.xml \
  about/index.html \
  contact/index.html \
  papers/index.html \
  projects/index.html \
  research/index.html \
  research/math/index.html \
  research/cancer/index.html \
  research/physics/index.html \
  sales/index.html \
  sales/case-studies/enterprise-ai-communications/index.html \
  sales/case-studies/ai-agent-demonstrations/index.html \
  writing/index.html \
  writing/what-is-the-turnpike-problem/index.html \
  writing/verification-before-velocity/index.html \
  writing/the-art-of-the-technical-demo/index.html \
  assets/css/minimal.css \
  assets/js/minimal.js \
  assets/img/favicon.svg \
  assets/img/qasim-shirazi.webp \
  assets/img/og-cover.svg
do
  copy_public "$file"
done

test -f "$OUT/index.html"
test -f "$OUT/robots.txt"
test -f "$OUT/sitemap.xml"
printf 'Prepared approved public website in %s\n' "$OUT"
