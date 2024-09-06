// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private extension Target.Dependency {
    static let commonFoundation: Self = .product(name: "CommonFoundation", package: "CommonFoundation")
}

let package = Package(
    name: "Create",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Create",
            targets: ["Create"])
    ],
    dependencies: [
        .package(name: "CommonFoundation", path: "../../Foundation/CommonFoundation")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Create",
            dependencies: [
                .commonFoundation
            ]
        ),
        .testTarget(
            name: "CreateTests",
            dependencies: ["Create"])
    ]
)
