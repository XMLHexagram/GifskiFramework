// swift-tools-version:5.7
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py
import PackageDescription

let package = Package(
    name: "GifskiFramework",
    products: [
        .library(
            name: "Gifski",
            targets: ["Gifski"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Gifski",
            url: "https://github.com/XMLHexagram/GifskiFramework/releases/download/1.11.0/GifskiFramework.zip",
            checksum: "b108d9bbffcccd9ca83df8da51ffef0f35fcb1eb4fc25da0a60d14d93a2aa955"
        ),
    ]
)
