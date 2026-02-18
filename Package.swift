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
            url: "https://raw.githubusercontent.com/hassanwasfy/edfapg_sdk/main/ios/0.0.1-alpha/edfapg_sdk.xcframework.zip",
            checksum: "b2a070fffd04bc711043fef7508f6225bbd3214fba879474d2b49809327bb600"
        ),
    ]
)
