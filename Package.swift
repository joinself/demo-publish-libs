// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemoPublishLibsTest",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DemoPublishLibsTest",
            targets: ["DemoPublishLibsTest", "self_ios_sdk"]),
    ],
    dependencies: [
        //        .package(url: "https://github.com/appwrite/sdk-for-swift", from: "0.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        
        .target(
            name: "DemoPublishLibsTest",
            dependencies: [
                "self_ios_sdk"
            ]
        ),
        .binaryTarget(
            name: "self_ios_sdk",
            url: "https://github.com/joinself/demo-publish-libs/releases/download/0.1/self_ios_sdk.xcframework.zip",
            checksum: "094ecfdeacfbd88b1bdcd09390719dd87cab25588efe2abfe2347f3c436bbf60"
        )
    ]
)
