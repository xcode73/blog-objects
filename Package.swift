// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "blog-api",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "BlogApi", targets: ["BlogApi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/feathercms/feather-api", .branch("main")),
    ],
    targets: [
        .target(name: "BlogApi", dependencies: [
            .product(name: "FeatherApi", package: "feather-api"),
        ]),
    ]
)
