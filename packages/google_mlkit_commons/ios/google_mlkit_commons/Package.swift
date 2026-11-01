// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "google-mlkit-commons",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        .library(
            name: "google-mlkit-commons",
            targets: ["google_mlkit_commons"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/arrrrny/google-mlkit-swiftpm",
            revision: "182c368b37b99fe038f139171e718904645f3b93b"
        )
    ],
    targets: [
        .target(
            name: "google_mlkit_commons",
            dependencies: [
                // google-mlkit-swiftpm does not expose standalone MLKitVision or MLKitCommon
                // library products.
                .product(name: "MLKitBarcodeScanning", package: "google-mlkit-swiftpm")
            ],
            path: "Sources/google_mlkit_commons"
        )
    ]
)
