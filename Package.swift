// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SafeFirebaseAnalytics",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SafeFirebaseAnalytics",
            targets: ["SafeFirebaseAnalytics"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.20.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SafeFirebaseAnalytics",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk")
            ]
        ),
        .testTarget(
            name: "SafeFirebaseAnalyticsTests",
            dependencies: ["SafeFirebaseAnalytics"]),
    ]
)
