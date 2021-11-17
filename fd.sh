#!/bin/sh

set -ex

PKG_NAME="fd"
PKG_VERSION="8.2.1"
PKG_PATH="$HOME/packages"

mkdir -p "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
git clone "https://github.com/sharkdp/fd" "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
cd "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
cargo build
cargo test
cargo install --path .
