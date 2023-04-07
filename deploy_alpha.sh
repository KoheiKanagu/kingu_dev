#!/bin/bash
set -euxo pipefail

flutter build web

rm -rf firebase/web

mv build/web firebase/web

(cd firebase && firebase hosting:channel:deploy alpha)
