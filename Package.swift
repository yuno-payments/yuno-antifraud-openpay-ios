// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YunoAntifraudOpenpay",
    defaultLocalization: "en",
    products: [
        .library(
            name: "YunoAntifraudOpenpay",
            targets: ["YunoAntifraudOpenpay", "OpenpayKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "YunoAntifraudOpenpay",
            url: "https://github.com/yuno-payments/yuno-antifraud-openpay-ios/releases/download/0.0.3/YunoAntifraudOpenpay.xcframework.zip",
            checksum: "bf72627b9cf9499621f68dca86e7b42a6c663476d6946ba7aa0478d9712cca7a"
        ),
        .binaryTarget(
            name: "OpenpayKit",
            url: "https://github.com/open-pay/openpay-swift-ios/releases/download/3.2.0/OpenpayKit.xcframework.zip",
            checksum: "a70869c996b1512e9d5167628d30c4a686dab3c743a8cd85117a194a781b3ae6"
        )
    ]
)