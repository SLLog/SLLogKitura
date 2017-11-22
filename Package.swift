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
         .package(url: "https://github.com/IBM-Swift/LoggerAPI.git", from: "1.7.1"),
         .package(url: "https://github.com/SLLog/SLLog", from: "1.0.1"),
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
