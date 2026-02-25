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
            url: "https://raw.githubusercontent.com/hassanwasfy/edfapg_sdk/main/ios/0.0.3-sc2/edfapg_sdk.xcframework.zip",
            checksum: "3a3b744922a08cda2869f7622b0af0ba41c587295367c36a13c8c6500dc32cc8"
        ),
    ]
)
