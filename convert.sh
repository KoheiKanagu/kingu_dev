#!/bin/bash
set -euxo pipefail

rm -rf public
mkdir -p public

for file in md/*.md; do
    outFile="public/$(basename "$file" .md).html"

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

for file in md/apps/**/*.md; do
    # md/apps/hoge/index.md → public/apps/hoge/index.html
    outFile="$(dirname "$file" | sed 's/md/public/')/index.html"

    mkdir -p "$(dirname "$outFile")"

    pandoc --standalone \
        --from markdown \
        --to html \
        --template .pandoc/templates/uikit_apps.html \
        --css ../../../.pandoc/templates/styles.css \
        --toc \
        --toc-depth=3 \
        --shift-heading-level-by=-1 \
        --fail-if-warnings \
        --metadata title="$(basename "$(dirname "$file")")" \
        "$file" >"$outFile"
done
