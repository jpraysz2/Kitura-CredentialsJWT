// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "Kitura-CredentialsJWT",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CredentialsJWT",
            targets: ["CredentialsJWT"]
        )
    ],
    dependencies: [
        .package(url: "https://gitlab.everial.com/jpraysz/kiturajp.git", from: "1.1.6"),
        .package(url: "https://github.com/jpraysz2/Kitura-Credentials.git", from: "1.0.1"),
        .package(url: "https://github.com/Kitura/Swift-JWT.git", from: "3.6.200"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CredentialsJWT",
            dependencies: ["KituraJP","Credentials", "SwiftJWT"]
        ),
        .testTarget(
            name: "CredentialsJWTTests",
            dependencies: ["CredentialsJWT"]
        )
    ]
)
