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
            url: "https://github.com/generativelab-develop/zerotalk-ios-sdk/releases/download/v0.1.17/ZeroTalkSDK.xcframework.zip",
            checksum: "72ed5c5aa2ac9200349e6c0d3db5348dea32f9dd5f021401ba372fefb22148d7"
        ),
        // SPM single binaryTarget visibility bug workaround
        .target(name: "_ZeroTalkSDKTarget"),
    ]
)
