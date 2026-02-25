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
            url: "https://raw.githubusercontent.com/hassanwasfy/edfapg_sdk/main/ios/0.0.3-sc1/edfapg_sdk.xcframework.zip",
            checksum: "cdf0de65f8f70280468178cedba091752f1529c2fa8b80d7d4bc551eb4dd477a"
        ),
    ]
)
