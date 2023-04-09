#!/bin/bash
set -euxo pipefail

rm -rf _flutter
git clone https://github.com/flutter/flutter.git --depth 1 -b "stable" "_flutter"

_flutter="$(pwd)/_flutter/bin"
export PATH="$PATH:$_flutter"

flutter --version

flutter pub global activate melos
flutter pub global activate grinder
export PATH="$PATH":"$HOME/.pub-cache/bin"
