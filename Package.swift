// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ZeroTalkSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "ZeroTalkSDK", targets: ["ZeroTalkSDK", "_ZeroTalkSDKTarget"]),
    ],
    targets: [
        .binaryTarget(
            name: "ZeroTalkSDK",
            url: "https://github.com/generativelab-develop/zerotalk-ios-sdk/releases/download/v0.1.10/ZeroTalkSDK.xcframework.zip",
            checksum: "8592e40e9fcbbc87c324e14744d3069b6391bbf308f2d78fb99e34ce3cb70b56"
        ),
        // SPM single binaryTarget visibility bug workaround
        .target(name: "_ZeroTalkSDKTarget"),
    ]
)
