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
            url: "https://raw.githubusercontent.com/hassanwasfy/edfapg_sdk/main/ios/0.0.2/edfapg_sdk.xcframework.zip",
            checksum: "199bb435893d3f7846b1d841b2cc177ac8884d9c80ae927eee446bea1b05d7e5"
        ),
    ]
)
