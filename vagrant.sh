#!/bin/sh

set -ex

PKG_NAME="vagrant"
PKG_VERSION="2.2.19"
SRC_PATH="$HOME/.local/src"
BIN_PATH="$HOME/.local/bin"

cd /tmp
wget "https://releases.hashicorp.com/vagrant/$PKG_VERSION/vagrant_${PKG_VERSION}_linux_amd64.zip"
unzip "vagrant_${PKG_VERSION}_linux_amd64.zip" -d "$SRC_PATH/$PKG_NAME-$PKG_VERSION"

ln -s "$SRC_PATH/$PKG_NAME-$PKG_VERSION/$PKG_NAME" "$BIN_PATH/$PKG_NAME"
