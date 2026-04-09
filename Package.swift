// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SwiftFlipper",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
        .tvOS(.v13),
    ],
    products: [
        .library(
            name: "SwiftFlipper",
            targets: ["SwiftFlipper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/chiragramani/FlipperPluginUtils",
                 revision: "f68ac6cc7954867b4ea9d9fa13be5995174c4929"),
    ],
    targets: [
        .target(
            name: "SwiftFlipper",
            dependencies: ["FlipperPluginUtils"]),
    ]
)
