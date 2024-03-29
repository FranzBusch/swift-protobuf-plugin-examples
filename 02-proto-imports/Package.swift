// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "swift-protobuf-example",
    dependencies: [
        //        .package(path: "../../swift-protobuf")
        .package(url: "https://github.com/FranzBusch/swift-protobuf.git", branch: "fb-plugin"),
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
