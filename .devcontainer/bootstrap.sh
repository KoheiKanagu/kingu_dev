#!/bin/bash
set -euxo pipefail

if [ -d "$FLUTTER_HOME" ]; then
    (cd "$FLUTTER_HOME" && git pull)
else
    git clone https://github.com/flutter/flutter.git --depth 1 -b "stable" "_flutter"
fi

flutter --version

flutter pub global activate melos
flutter pub global activate grinder

flutter pub get
