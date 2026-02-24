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
            url: "https://raw.githubusercontent.com/hassanwasfy/edfapg_sdk/main/ios/0.0.2-size/edfapg_sdk.xcframework.zip",
            checksum: "c996e6ee5288b763fdfd555d33c1fd4716ced3398f9c26bdbe13649f99039a3e"
        ),
    ]
)
