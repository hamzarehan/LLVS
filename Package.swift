// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LLVS",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(
            name: "SQLite3",
            targets: ["SQLite3"]),
        .library(
            name: "LLVS",
            targets: ["LLVS"]),
        .library(
            name: "LLVSCloudKit",
            targets: ["LLVSCloudKit"]),
        .library(
            name: "LLVSSQLite",
            targets: ["LLVSSQLite"]),
    ],
    dependencies: [
    ],
    targets: [
        .systemLibrary(
            name: "SQLite3"
        ),
        .target(
            name: "LLVS",
            dependencies: []),
        .testTarget(
            name: "LLVSTests",
            dependencies: ["LLVS", "LLVSSQLite"]),
        .target(
            name: "LLVSCloudKit",
            dependencies: ["LLVS"]),
        .target(
            name: "LLVSSQLite",
            dependencies: ["LLVS", "SQLite3"])
    ]
)
