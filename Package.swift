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
            url: "https://github.com/generativelab-develop/zerotalk-ios-sdk/releases/download/v0.1.13/ZeroTalkSDK.xcframework.zip",
            checksum: "75b35079aec9bb8cf2c9859520db77b3a5745ed958390711243c3850265a7292"
        ),
        // SPM single binaryTarget visibility bug workaround
        .target(name: "_ZeroTalkSDKTarget"),
    ]
)
