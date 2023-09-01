#!/bin/bash
set -e

cd "$( dirname "$0" )" && cd ..|| exit 1

#rustup toolchain remove nightly-aarch64-apple-darwin
# rustup toolchain install nightly
rustup install nightly
# rustup component add rust-src --toolchain nightly-aarch64-apple-darwin
rustup component add rust-src --toolchain nightly-x86_64-apple-darwin
rustup target add x86_64-apple-darwin
rustup target add aarch64-apple-ios-sim
rustup target add aarch64-apple-ios
rustup target add x86_64-apple-ios
rustup target add aarch64-apple-darwin

git submodule init
git submodule update
