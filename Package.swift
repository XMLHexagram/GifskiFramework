// swift-tools-version:5.7
// DO NOT EDIT! Generated automatically. See scripts/swift_package_generator.py
import PackageDescription

let package = Package(
    name: "TDLibFramework",
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
            checksum: "3fec39bfa2729d20c16e6fd726896b604c94842017f8ebb892c2118f3212635f"
        ),
    ]
)
