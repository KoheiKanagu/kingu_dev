#!/bin/bash
set -euxo pipefail

LATEST_BETA=$(gh api repos/flutter/flutter/git/refs/tags --paginate | jq -r '.[].ref' | grep '\.pre$' | sort -V | tail -n1 | sed 's/refs\/tags\///')

# Install Flutter
if [ -d "$FLUTTER_HOME" ]; then
    git -C "$FLUTTER_HOME" checkout "$LATEST_BETA"
else
    git clone https://github.com/flutter/flutter.git --depth 1 --branch "$LATEST_BETA" "$HOME/flutter"
fi

flutter --version

flutter pub global activate melos
flutter pub global activate grinder

flutter pub get

# gh extension

gh extension install seachicken/gh-poi
