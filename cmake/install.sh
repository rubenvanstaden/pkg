#!/bin/sh

set -ex

PKG_NAME="cmake"
PKG_VERSION="3.21.0"
PREFIX="/usr/local"
SRC_PATH="$PREFIX/src"

cd /tmp
wget "https://github.com/Kitware/CMake/releases/download/v$PKG_VERSION/cmake-$PKG_VERSION.tar.gz"
tar -zxvf "cmake-$PKG_VERSION.tar.gz"

mv "cmake-$PKG_VERSION" "$SRC_PATH/$PKG_NAME-$PKG_VERSION"
cd "$SRC_PATH/$PKG_NAME-$PKG_VERSION"

./bootstrap --prefix="$PREFIX"
make -j $(nproc) all
make install
