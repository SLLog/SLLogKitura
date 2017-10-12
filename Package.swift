// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SLLogKitura",
    products: [
        .library(
            name: "SLLogKitura",
            targets: ["SLLogKitura"]),
    ],
    dependencies: [
         .package(url: "https://github.com/IBM-Swift/LoggerAPI", from: "1.7.1"),
         .package(url: "https://github.com/shial4/SLLog.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SLLogKitura",
            dependencies: ["SLLog", "LoggerAPI"]),
        .testTarget(
            name: "SLLogKituraTests",
            dependencies: ["SLLogKitura"]),
    ]
)
