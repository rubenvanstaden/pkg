#!/bin/sh

set -ex

PKG_NAME=nvim
PKG_VERSION=0.7.0
SRC_PATH=$HOME/.local/src
BIN_PATH=$HOME/.local/bin

mkdir -p "$SRC_PATH/$PKG_NAME-$PKG_VERSION"
cd "$SRC_PATH/$PKG_NAME-$PKG_VERSION"

wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage

chmod u+x nvim.appimage

ln -s $SRC_PATH/$PKG_NAME-$PKG_VERSION/nvim.appimage $BIN_PATH/$PKG_NAME
