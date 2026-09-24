// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "core_haptics",

    platforms: [
        .iOS(.v13),
        .macOS(.v11),
    ],

    products: [
        .library(
            name: "core-haptics",
            type: .dynamic,
            targets: ["CoreHapticsFFI"]
        ),
    ],

    targets: [
        .target(
            name: "CoreHapticsFFI",
            dependencies: [],
            path: "Sources/CoreHapticsFFI"
        ),
        .testTarget(
            name: "CoreHapticsFFITests",
            dependencies: ["CoreHapticsFFI"]
        ),
    ]
)