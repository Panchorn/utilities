#!/bin/bash

VERSION=$(git fetch --tags && git describe --tags --abbrev=0)
GIT_HASH=$(git rev-parse --short HEAD)
BUILD_TIME=$(TZ=Asia/Bangkok date "+%Y-%m-%d %H:%M:%S ICT")

cat <<EOF > version.js
const VERSION = "${VERSION}";
const GIT_HASH = "${GIT_HASH}";
const BUILD_TIME = "${BUILD_TIME}";
EOF

echo "version.js generated"