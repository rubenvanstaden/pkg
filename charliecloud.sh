#!/bin/sh

set -ex

PKG_NAME="charliecloud"
PKG_VERSION="0.25"
PREFIX="/usr/local"
SRC_PATH="$PREFIX/src"

cd /tmp
git clone --recursive "https://github.com/hpc/charliecloud.git"
wget "https://github.com/hpc/charliecloud/releases/download/v0.25/charliecloud-$PKG_VERSION.tar.gz"
tar -zxvf "charliecloud-$PKG_VERSION.tar.gz"

mv "charliecloud-$PKG_VERSION" "$SRC_PATH/$PKG_NAME-$PKG_VERSION"
cd "$SRC_PATH/$PKG_NAME-$PKG_VERSION"

./configure
make -j "$(nproc)"
make install PREFIX="$PREFIX"
