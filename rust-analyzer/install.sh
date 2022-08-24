#!/bin/sh

set -ex

PKG_NAME="rust-analyzer"
PKG_VERSION="2022-02-14"
SRC_PATH="$HOME/.local/src"
BIN_PATH="$HOME/.local/bin"

cd /tmp
wget "https://github.com/rust-analyzer/rust-analyzer/archive/refs/tags/$PKG_VERSION.tar.gz"
tar -zxvf "$PKG_VERSION.tar.gz"

mv "$PKG_NAME-$PKG_VERSION" "$SRC_PATH/$PKG_NAME-$PKG_VERSION"
cd "$SRC_PATH/$PKG_NAME-$PKG_VERSION"

cargo xtask install --server
