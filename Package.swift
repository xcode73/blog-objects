// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "blog-objects",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "BlogObjects", targets: ["BlogObjects"]),
    ],
    dependencies: [
        .package(url: "https://github.com/xcode73/feather-objects", .branch("test-dev")),
    ],
    targets: [
        .target(name: "BlogObjects", dependencies: [
            .product(name: "FeatherObjects", package: "feather-objects"),
        ]),
    ]
)
