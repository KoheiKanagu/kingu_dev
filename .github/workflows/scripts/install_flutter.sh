#!/bin/bash

echo "$GITHUB_WORKSPACE/_flutter/bin" >>"$GITHUB_PATH"

if [ -d "$GITHUB_WORKSPACE/_flutter" ]; then
    exit 0
fi

BRANCH=$1
git clone https://github.com/flutter/flutter.git --depth 1 -b "$BRANCH" "$GITHUB_WORKSPACE/_flutter"
