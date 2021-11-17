#!/bin/sh

set -ex

PKG_NAME="nvim"
PKG_VERSION="0.5.1"
PKG_PATH="$HOME/packages"

mkdir -p "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
cd "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
wget "https://github.com/neovim/neovim/releases/download/stable/nvim.appimage"
chmod u+x nvim.appimage
sudo ln -s "$PKG_PATH/$PKG_NAME/$PKG_VERSION/nvim.appimage" "/usr/local/bin/$PKG_NAME"
