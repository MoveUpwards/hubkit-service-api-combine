// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "hubkit-service-api-combine",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "HubkitApiCombine",
            targets: ["HubkitApiCombine"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/MoveUpwards/hubkit-model-swift.git", from: "2.0.0"),
            .package(url: "https://github.com/MoveUpwards/hubkit-service-api.git", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "HubkitApiCombine",
            dependencies: [
                .product(name: "HubkitModel", package: "hubkit-model-swift"),
                .product(name: "HubkitApi", package: "hubkit-service-api"),
            ],
            path: "Sources"
        ),
    ]
)
