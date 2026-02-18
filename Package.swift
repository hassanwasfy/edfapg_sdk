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
            url: "https://raw.githubusercontent.com/hassanwasfy/edfapg_sdk/main/ios/0.0.1-alpha.2/edfapg_sdk.xcframework.zip",
            checksum: "2413e31567d382f621a5cf70acf00a7eb2038ec469add41061829aa9d0fd13a2"
        ),
    ]
)
