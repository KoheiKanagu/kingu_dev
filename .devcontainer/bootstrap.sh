#!/bin/bash
set -euxo pipefail

# Flutter
CHANNEL="beta" # or "stable"

TAGS=$(gh api repos/flutter/flutter/git/refs/tags --paginate | jq -r '.[].ref' | sed 's/refs\/tags\///' | grep '^[0-9].*')

## Search latest tag
if [ "$CHANNEL" = "beta" ]; then
    TARGET_TAG=$(echo "$TAGS" | grep '\.pre$' | sort -V | tail -n 1)
elif [ "$CHANNEL" = "stable" ]; then
    TARGET_TAG=$(echo "$TAGS" | grep -v '\.pre$' | sort -V | tail -n 1)
else
    echo "CHANNEL is invalid."
    exit 1
fi

## Install Flutter
if [ -d "$FLUTTER_HOME" ]; then
    git -C "$FLUTTER_HOME" checkout "$TARGET_TAG"
else
    git clone https://github.com/flutter/flutter.git --depth 1 --branch "$TARGET_TAG" "$HOME/flutter"
fi

flutter --version

flutter pub global activate melos
flutter pub global activate grinder

# gh extension

gh extension install seachicken/gh-poi

# Firebase CLI

curl -sL https://firebase.tools | bash
