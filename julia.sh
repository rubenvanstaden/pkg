#!/bin/sh

set -ex

PKG_NAME="julia"
PKG_VERSION="1.6.3"
SRC_PATH="/usr/local/src"
BIN_PATH="/usr/local/bin"

cd /tmp
wget "https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-$PKG_VERSION-linux-x86_64.tar.gz"
tar -zxvf "julia-$PKG_VERSION-linux-x86_64.tar.gz"

mv "julia-$PKG_VERSION" "$SRC_PATH/$PKG_NAME-$PKG_VERSION"
ln -s "$SRC_PATH/$PKG_NAME-$PKG_VERSION/bin/julia" "$BIN_PATH/$PKG_NAME"
