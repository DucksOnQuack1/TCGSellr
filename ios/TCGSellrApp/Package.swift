// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TCGSellrApp",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "TCGSellrApp", targets: ["TCGSellrApp"])
    ],
    targets: [
        .target(
            name: "TCGSellrApp",
            path: "Sources"
        ),
        .testTarget(
            name: "TCGSellrAppTests",
            dependencies: ["TCGSellrApp"],
            path: "Tests"
        )
    ]
)
