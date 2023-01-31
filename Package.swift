// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMTest",
    
    platforms: [
        .iOS(.v12)
    ],
    
    products: [
        .library(name: "SPMTest", targets: ["SPMTest"])
    ],
    
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/zegolibrary/express-video-ios", from: "3.0.0"),
    ],
    
    targets: [
        .binaryTarget(
                    name: "SPMTest",
                    url: "https://github.com/xihang-real/SPMTest/blob/main/SPMTest.xcframework.zip",
                    checksum: "bbc5df01b1960cc3790bcaa60ef603188b2415fdb3a293de33918e18b9dd28d5"
                )
    ]
)
