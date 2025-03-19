// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MMTooltip",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "MMTooltip",
            targets: ["MMTooltip"]
        ),
    ],
    targets: [
        .target(
            name: "MMTooltip"
        ),
    ]
)
