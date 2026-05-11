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
            checksum: "a84f7f356c389d3aa78c67f9793215663142b0d4d33a6963968e1c2da455e62f"
        ),
        // SPM single binaryTarget visibility bug workaround
        .target(name: "_ZeroTalkSDKTarget"),
    ]
)
