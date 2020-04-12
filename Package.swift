// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HappyTextField",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "HappyTextField",
            targets: ["HappyTextField"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rcaraway/HappyColors.git", .branch("master"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "HappyTextField",
            dependencies: ["HappyColors"]),
        .testTarget(
            name: "HappyTextFieldTests",
            dependencies: ["HappyTextField"]),
    ]
)
