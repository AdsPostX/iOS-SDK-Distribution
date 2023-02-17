// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdsPostX",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AdsPostX",
            targets: ["AdsPostX"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "AdsPostX",
            url: "https://adpx.b-cdn.net/ios/1.0.0/AdsPostX.xcframework.zip",
            checksum:
                "5cf6d08231e3dca818b192ea7608036f8fefafd87c6755560d57090b7e491467")
    ]
)
