// swift-tools-version:5.3
// Version 5.3 required for Swift Argument Parser. Supports Catalina+

import PackageDescription

let package = Package(
    // This name is normally synonymous with a hosted git repo
    name: "SwiftMiscUtility",

    platforms: [.macOS(.v10_12)],

    // The executables or libraries produced by this project
    products: [
        // This is the call name of the library that is produced.
        // You don't import that name. You import the names of the
        // module targets included within the library.
        .library(name: "SwiftMiscUtility",

            // The targets named here are the modules listed in the targets section
            targets: ["SwiftMiscUtility"]),
    ],

    dependencies: [
        .package(url: "https://github.com/erica/Swift-General-Utility", from: "0.0.8"),
    ],

    targets: [
        // Create module targets

        .target(
            // This is the module name. It is used by the product section targets
            // and by any test target
            name: "SwiftMiscUtility",
            dependencies: [
                .product(name: "GeneralUtility", package: "Swift-General-Utility"),
            ],
            path: "Sources/" // Omit or override if needed
        ),

        // Test target omitted here
        .testTarget(name: "Tests", dependencies: ["SwiftMiscUtility"]),
    ],

    swiftLanguageVersions: [ .v5 ]
)
