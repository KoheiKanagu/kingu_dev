#!/bin/bash
set -euxo pipefail

for file in assets/contents/*.md; do
    name=$(basename "$file")

    pandoc --standalone \
        --from markdown \
        --to html \
        --template=.pandoc/templates/uikit.html \
        --toc \
        --toc-depth=2 \
        --shift-heading-level-by=-1 \
        --fail-if-warnings \
        --metadata title="kingu.dev" \
        "$file" >"public/${name%.md}.html"
done
