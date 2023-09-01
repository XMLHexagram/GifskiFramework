#!/bin/bash
set -e

cd "$( dirname "$0" )" && cd ../gifski || exit 1

mkdir headers
cp -r ../headers/module.modulemap ./headers/
cp gifski.h ./headers

mkdir libs
cargo build --release --lib --target aarch64-apple-darwin
cargo build --release --lib --target x86_64-apple-darwin
cargo +nightly build -Zbuild-std=std,panic_abort --release --lib --target aarch64-apple-ios-macabi
cargo +nightly build -Zbuild-std=std,panic_abort --release --lib --target x86_64-apple-ios-macabi
lipo -create -output libs/libgifski-macos.a \
		target/aarch64-apple-darwin/release/libgifski.a \
		target/x86_64-apple-darwin/release/libgifski.a
lipo -create -output libs/libgifski-maccatalyst.a \
		target/aarch64-apple-ios-macabi/release/libgifski.a \
		target/x86_64-apple-ios-macabi/release/libgifski.a

cargo build --release --lib --target aarch64-apple-ios
cargo build --release --lib --target aarch64-apple-ios-sim
cargo build --release --lib --target x86_64-apple-ios
cp target/aarch64-apple-ios/release/libgifski.a libs/libgifski-ios.a
lipo -create -output libs/libgifski-ios-sim.a \
		target/aarch64-apple-ios-sim/release/libgifski.a \
		target/x86_64-apple-ios/release/libgifski.a

xcodebuild -create-xcframework \
-library libs/libgifski-macos.a \
-headers ./headers/ \
-library libs/libgifski-ios-sim.a \
-headers ./headers/ \
-library libs/libgifski-maccatalyst.a \
-headers ./headers/ \
-library libs/libgifski-ios.a \
-headers ./headers/ \
-output Gifski.xcframework