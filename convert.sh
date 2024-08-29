#!/bin/bash
set -euxo pipefail

find md -name "*.md" | while IFS= read -r file; do
    path=${file#md/}

    outFile="public/${path%.md}.html"
    mkdir -p "$(dirname "$outFile")"

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
        "$file" >"$outFile"
done
