#!/bin/bash
set -euxo pipefail

git clone https://github.com/flutter/flutter.git --depth 1 -b "stable" "_flutter"

# which flutter
# flutter --version

# flutter pub global activate melos
# flutter pub global activate grinder
