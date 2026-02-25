// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "edfapg_sdk",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "edfapg_sdk",
            targets: ["edfapg_sdk"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "edfapg_sdk",
            url: "https://raw.githubusercontent.com/hassanwasfy/edfapg_sdk/main/ios/0.0.2-size2/edfapg_sdk.xcframework.zip",
            checksum: "cbcf34484270f4ffaae7be3c7180154f3ff61979fe16a0989dfdc2656d808cc7"
        ),
    ]
)
