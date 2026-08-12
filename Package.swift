// swift-tools-version:6.1.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-asn1",
    products: [
        .library(
            name: "SwiftASN1",
            targets: ["SwiftASN1_PrecompiledProduct"]
        )
    ],
    targets: [
        .target(
            name: "SwiftASN1_Aggregation",
            dependencies: ["SwiftASN1"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "SwiftASN1",
            url: "https://github.com/swift-precompiled/swift-asn1/releases/download/1.7.1/SwiftASN1-dc71c9cd953cb0c0be90130ddf6e2562ef03102267b0961c23953e3e327a07dc.xcframework.zip",
            checksum: "dc71c9cd953cb0c0be90130ddf6e2562ef03102267b0961c23953e3e327a07dc"
        ),
        .target(
            name: "SwiftASN1_PrecompiledProduct",
            dependencies: ["SwiftASN1_Aggregation"]
        )
    ]
)