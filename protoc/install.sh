#!/bin/sh

set -ex

PKG_NAME="protoc"
PKG_VERSION="3.19.1"
PREFIX="/usr/local"
SRC_PATH="$PREFIX/src"
BIN_PATH="$PREFIX/bin"
INC_PATH="$PREFIX/include"

cd /tmp
wget "https://github.com/protocolbuffers/protobuf/releases/download/v$PKG_VERSION/protoc-$PKG_VERSION-linux-x86_64.zip"
unzip "protoc-$PKG_VERSION-linux-x86_64.zip" -d "protoc-$PKG_VERSION"

cp -R /tmp/protoc-${PKG_VERSION}/include/* ${INC_PATH}
cp -R "/tmp/protoc-$PKG_VERSION" "$SRC_PATH/$PKG_NAME-$PKG_VERSION"
ln -s "$SRC_PATH/$PKG_NAME-$PKG_VERSION/bin/protoc" "$BIN_PATH/$PKG_NAME"

chown -R ruben:ruben ${SRC_PATH}/${PKG_NAME}-${PKG_VERSION}
