// swift-tools-version:4.2
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
         .package(url: "https://github.com/IBM-Swift/LoggerAPI.git", from: "1.8.0"),
         .package(url: "https://github.com/shial4/SLLog.git", from: "1.1.0"),
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
