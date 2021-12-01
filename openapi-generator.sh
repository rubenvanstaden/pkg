#!/bin/sh

# Dependencies
# ------------
# maven
# jq
# ------------

set -ex

PKG_NAME="cmake"
PKG_VERSION="3.21.0"
PREFIX="/usr/local"
SRC_PATH="$PREFIX/src"

curl "https://raw.githubusercontent.com/OpenAPITools/openapi-generator/master/bin/utils/openapi-generator-cli.sh" > ~/.local/bin/openapi-generator-cli
chmod u+x ~/.local/bin/openapi-generator-cli
