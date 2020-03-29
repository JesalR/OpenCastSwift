// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "OpenCastSwift",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
    ],
    products: [
        .library(name: "OpenCastSwift", targets: ["ChromeCastCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.7.0")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "4.0.0"))
    ],
    targets: [
        .target(
            name: "ChromeCastCore",
            dependencies: ["SwiftProtobuf", "SwiftyJSON"],
            path: "./Source/"
        )
    ],
    swiftLanguageVersions: [.v4]
)
