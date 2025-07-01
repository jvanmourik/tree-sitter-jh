// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterJH",
    products: [
        .library(name: "TreeSitterJH", targets: ["TreeSitterJH"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterJH",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterJHTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterJH",
            ],
            path: "bindings/swift/TreeSitterJHTests"
        )
    ],
    cLanguageStandard: .c11
)
