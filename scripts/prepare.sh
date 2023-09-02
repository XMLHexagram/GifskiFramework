#!/bin/bash
set -e

cd "$( dirname "$0" )" && cd ..|| exit 1

rustup install nightly
arch=$(uname -m)
if [[ $arch == x86_64* ]]; then
    rustup component add rust-src --toolchain nightly-x86_64-apple-darwin
elif  [[ $arch == arm* ]]; then
    rustup component add rust-src --toolchain nightly-aarch64-apple-darwin
fi
rustup target add x86_64-apple-darwin
rustup target add aarch64-apple-ios-sim
rustup target add aarch64-apple-ios
rustup target add x86_64-apple-ios
rustup target add aarch64-apple-darwin

git submodule init
git submodule update
