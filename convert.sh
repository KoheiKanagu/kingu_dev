#!/bin/bash
set -euxo pipefail

rm -rf public
mkdir -p public

for file in src/*.md; do
    outFile="public/$(basename "$file" .md).html"

    pandoc --standalone \
        --from markdown \
        --to html \
        --template .pandoc/templates/uikit.html \
        --css css/styles.css \
        --toc \
        --toc-depth=3 \
        --shift-heading-level-by=-1 \
        --fail-if-warnings \
        --metadata title="kingu.dev" \
        "$file" >"$outFile"
done

for file in src/apps/**/*.md; do
    # src/apps/hoge/index.md → public/apps/hoge/index.html
    outFile="$(dirname "$file" | sed 's/src/public/')/index.html"

    mkdir -p "$(dirname "$outFile")"

    pandoc --standalone \
        --from markdown \
        --to html \
        --template .pandoc/templates/uikit_apps.html \
        --css ../../css/styles.css \
        --toc \
        --toc-depth=3 \
        --shift-heading-level-by=-1 \
        --fail-if-warnings \
        "$file" >"$outFile"
done

for file in src/apps/*.md; do
    outFile="public/apps/$(basename "$file" .md).html"

    pandoc --standalone \
        --from markdown \
        --to html \
        "$file" >"$outFile"
done

rm -rf public/images
cp -R src/images public/

rm -rf public/css
cp -R src/css public/

cp src/app-ads.txt public/
