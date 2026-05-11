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
            checksum: "5db127f80fde7f3f67f9214f3b882846b3820b1669795cbfbef942f8b9569d9e"
        ),
        // SPM single binaryTarget visibility bug workaround
        .target(name: "_ZeroTalkSDKTarget"),
    ]
)
