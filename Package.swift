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
            url: "https://raw.githubusercontent.com/hassanwasfy/edfapg_sdk/main/ios/0.0.1-alpha.4/edfapg_sdk.xcframework.zip",
            checksum: "1a4cf0e1b079bd9de041d03f76790944932e0e2e371d1e2dfd0203310a43213a"
        ),
    ]
)
