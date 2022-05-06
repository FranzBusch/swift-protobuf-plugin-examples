// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "swift-protobuf-example",
    dependencies: [
        //         .package(path: "../../swift-protobuf")
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.20.0"),
    ],
    targets: [
        .executableTarget(
            name: "swift-protobuf-example",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ],
            plugins: [
                .plugin(name: "SwiftProtobufPlugin", package: "swift-protobuf"),
            ]
        ),
    ]
)
