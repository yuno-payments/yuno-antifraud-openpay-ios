// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YunoAntifraudCybersource",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "YunoAntifraudCybersource",
            type: .dynamic,
            targets: ["YunoAntifraudCybersource", "RLTMXBehavioralBiometrics", "RLTMXProfiling", "RLTMXProfilingConnections"])
    ],
    targets: [
        .binaryTarget(
            name: "YunoAntifraudCybersource",
            url: "https://github.com/yuno-payments/yuno-antifraud-openpay-ios/releases/download/0.0.4/YunoAntifraudCybersource.xcframework.zip",
            checksum: "d8cf0c9e0471fea0a08daaa6aa907d188746d46b75bc0ef01f53f9453af8e3eb"
        ),
        .binaryTarget(
            name: "RLTMXBehavioralBiometrics",
            url: "https://github.com/yuno-payments/yuno-antifraud-openpay-ios/releases/download/0.0.4/RLTMXBehavioralBiometrics.xcframework.zip",
            checksum: "03d909378ca132cd401737baed3a0f6eeb02893ecb3c0e750172782a52de7148"
        ),
        .binaryTarget(
            name: "RLTMXProfiling",
            url: "https://github.com/yuno-payments/yuno-antifraud-openpay-ios/releases/download/0.0.4/RLTMXProfiling.xcframework.zip",
            checksum: "db80aeca9bfae28139b5e1bc6c944db6164e4ff359b244d1b82d85d5d76c3424"
        ),
        .binaryTarget(
            name: "RLTMXProfilingConnections",
            url: "https://github.com/yuno-payments/yuno-antifraud-openpay-ios/releases/download/0.0.4/RLTMXProfilingConnections.xcframework.zip",
            checksum: "4495b69492a0040687b3fdf8580a4ac4f9abb289344609fdcf445fd72c4c20b2"
        )
    ]
)