#!/bin/bash

VERSION=$(git describe --tags --always)
GIT_HASH=$(git rev-parse --short HEAD)
BUILD_TIME=$(date "+%Y-%m-%d %H:%M:%S")

cat <<EOF > version.js
const VERSION = "${VERSION}";
const GIT_HASH = "${GIT_HASH}";
const BUILD_TIME = "${BUILD_TIME}";
EOF

echo "version.js generated"