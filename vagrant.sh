#!/bin/sh

set -ex

PKG_NAME="vagrant"
PKG_VERSION="2.2.19"
PKG_PATH="$HOME/packages"

mkdir -p "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
cd "$PKG_PATH/$PKG_NAME/$PKG_VERSION"
wget "https://releases.hashicorp.com/vagrant/$PKG_VERSION/vagrant_${PKG_VERSION}_linux_amd64.zip"
unzip "vagrant*"
rm *.zip
sudo ln -s "$PKG_PATH/$PKG_NAME/$PKG_VERSION/vagrant" "/usr/local/bin/$PKG_NAME"
