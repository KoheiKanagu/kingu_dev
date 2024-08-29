#!/bin/bash
set -euxo pipefail

for file in md/*.md; do
    name=$(basename "$file")

    pandoc --standalone \
        --from markdown \
        --to html \
        --template .pandoc/templates/uikit.html \
        --css ../.pandoc/templates/styles.css \
        --toc \
        --toc-depth=3 \
        --shift-heading-level-by=-1 \
        --fail-if-warnings \
        --metadata title="kingu.dev" \
        "$file" >"public/${name%.md}.html"
done
