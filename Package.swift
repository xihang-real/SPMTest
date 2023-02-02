// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMTestSDK",
    
    platforms: [.iOS(.v12)],
    
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SPMTestSDK",
            targets: ["SPMTestSDK","SPMTest"]),
    ],
    
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/zegolibrary/express-video-ios", from: "3.0.0")
    ],
    
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "SPMTestSDK",dependencies: [
            .product(name: "ZegoExpressEngine", package: "express-video-ios")]),
//        .binaryTarget(name: "SPMTest",
//                      path: "artifacts/SPMTest.xcframework"),
        
        .binaryTarget(name: "SPMTest", url: "https://github.com/xihang-real/SPMTest/releases/download/v1.1.0/SPMTest.xcframework.zip", checksum: "14481356334f3a16b949a1cc85fd86ac6548ebae3a9766e50c2d967bb4c4766f"),
        
//        .testTarget(
//            name: "SPMTestTests",
//            dependencies: ["SPMTestSDK"])
    ]
)
