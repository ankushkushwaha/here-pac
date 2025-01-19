// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "here-map-package",
    platforms: [
            .iOS(.v15) // Specify the minimum supported iOS version here
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "here-map-package",
            targets: ["here-map-package"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        
        .target(
            name: "here-map-package",
            dependencies: [
                "heresdk"
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "heresdk",
            path: "Frameworks/heresdk.xcframework"
        ),
        .testTarget(
            name: "here-map-packageTests",
            dependencies: ["here-map-package"]
        ),
    ]
)
