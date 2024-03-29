// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "ApiVideoClient",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .tvOS(.v10),
        .watchOS(.v3),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ApiVideoClient",
            targets: ["ApiVideoClient"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.1"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.4.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ApiVideoClient",
            dependencies: ["AnyCodable", "Alamofire", ],
            path: "Sources"
        ),
        // Targets for tests
        .testTarget(
            name: "ApiVideoClientTests",
            dependencies: ["ApiVideoClient"],
            path: "Tests",
            resources: [ .process("TestResources/assets"),
                         .copy("TestResources/payloads") ]
        ),
    ]
)
