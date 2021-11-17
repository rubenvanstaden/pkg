#!/bin/sh

set -ex

PKG_NAME="cmake"
PKG_VERSION="3.21.0"
PKG_PATH="$HOME/packages"

mkdir -p "$PKG_NAME"
cd "$PKG_NAME"
wget "https://github.com/Kitware/CMake/releases/download/v$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
tar -zxvf "$PKG_NAME-$PKG_VERSION.tar.gz"
mv "$PKG_NAME-$PKG_VERSION" "$PKG_VERSION"
rm "$PKG_NAME-$PKG_VERSION.tar.gz"
cd "$PKG_VERSION"
./bootstrap
make -j $(nproc) all
sudo make install
