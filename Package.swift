// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Gifski",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Gifski",
            targets: ["Gifski"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "Gifski",
            url: "https://github.com/Swiftgram/TDLibFramework/releases/download/1.8.16-470c36ce/TDLibFramework.zip",
            checksum: "4bb76120da4394e4f543f080af73e912883662fe9a8a75dea5e8a9ed8e7aa65f"
        )
    ]
)
