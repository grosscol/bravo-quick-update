#!/usr/bin/env sh

DATE="${DATE:=$(date '+%Y-%m-%d')}"

# Run from project root directory to create index.html
pandoc -t revealjs --template=pandoc-templates/default.revealjs \
  -o index.html  --slide-level=2 \
  -V revealjs-url=reveal.js  -V theme=serif slides/*.md -V date="${DATE}"

echo "index.html built $(date)"

