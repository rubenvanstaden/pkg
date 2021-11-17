#!/bin/sh

set -ex

PKG_NAME="poetry"
PKG_VERSION="1.1.11"
PKG_PATH="$HOME/packages"

mkdir -p "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
git clone "https://github.com/python-poetry/poetry.git" "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
cd "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
python3 install-poetry.py
