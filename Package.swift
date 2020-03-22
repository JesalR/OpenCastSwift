// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "OpenCastSwift",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
    ],
    products: [
        .library(name: "OpenCastSwift", targets: ["OpenCastSwift", "CASTV2PlatformReader"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.7.0"))
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .from: "5.0.0")
    ],
    targets: [
        .target(
            name: "OpenCastSwift",
            dependencies: ["SwiftProtobuf", "CASTV2PlatformReader"],
            path: "OpenCastSwift",
            exclude: ["PlatformReader.swift"]
        ),
        .target(name: "CASTV2PlatformReader", path: "CASTV2PlatformReader")
    ],
    swiftLanguageVersions: [.v4]
)
