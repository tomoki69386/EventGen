// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EventGen",
    products: [
        .executable(name: "EventGen", targets: ["EventGen"]),
        .library(
            name: "Core",
            targets: ["Core"]
        ),
        .library(
            name: "EventSpec",
            targets: ["EventSpec"]
        ),
    ],
    dependencies: [
        .package(name: "XcodeProject", url: "https://github.com/bannzai/XcodeProject.git", from: Version(1, 1, 1)),
        .package(name: "Yaml", url: "https://github.com/behrang/YamlSwift.git", from: Version(3, 4, 4)),
        .package(name: "SwiftShell", url: "https://github.com/kareman/SwiftShell.git", from: Version(5, 1, 0))
    ],
    targets: [
        .target(
            name: "EventGen",
            dependencies: ["Core"]
        ),
        .target(
            name: "Core",
            dependencies: ["XcodeProject", "Yaml", "SwiftShell", "EventSpec"]
        ),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"]
        ),
        .target(name: "EventSpec")
    ]
)
