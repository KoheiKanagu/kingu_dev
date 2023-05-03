#!/bin/bash
set -euxo pipefail

# Install Flutter
if [ -d "$FLUTTER_HOME" ]; then
    (cd "$FLUTTER_HOME" && git pull)
else
    git clone https://github.com/flutter/flutter.git --depth 1 -b "beta" "_flutter"
fi

flutter --version

flutter pub global activate melos
flutter pub global activate grinder

flutter pub get

# gh extension

gh extension install seachicken/gh-poi
