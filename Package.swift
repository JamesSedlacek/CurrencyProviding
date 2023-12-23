// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CurrencyProviding",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "CurrencyProviding",
            targets: ["CurrencyProviding"]),
    ],
    targets: [
        .target(
            name: "CurrencyProviding"),
        .testTarget(
            name: "CurrencyProvidingTests",
            dependencies: ["CurrencyProviding"]),
    ]
)
