// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Shared",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Shared",
            targets: ["SharedTargets"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/victor-arana-kenility/truvideo-sdk-ios-shared-test/releases/download/0.0.3/shared.xcframework.zip",
            checksum: "3de05abc74aa5b8df49319438533dfdfe346b06a5bce8fc06f1868159446f991"
        ),
        .target(
            name: "SharedTargets",
            dependencies: [
                .target(name: "Shared")
            ],
            path: "Sources"
        )
    ]
)
