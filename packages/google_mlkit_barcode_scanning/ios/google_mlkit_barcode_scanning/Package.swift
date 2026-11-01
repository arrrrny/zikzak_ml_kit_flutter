// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "google-mlkit-barcode-scanning",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        .library(
            name: "google-mlkit-barcode-scanning",
            targets: ["google_mlkit_barcode_scanning"])
    ],
    dependencies: [
        .package(name: "google_mlkit_commons", path: "../google_mlkit_commons"),
        .package(
            url: "https://github.com/arrrrny/google-mlkit-swiftpm",
            revision: "182c368b37b99fe038f139171e718904645f3b93b"
        ),
    ],
    targets: [
        .target(
            name: "google_mlkit_barcode_scanning",
            dependencies: [
                .product(name: "MLKitBarcodeScanning", package: "google-mlkit-swiftpm"),
                .product(name: "google-mlkit-commons", package: "google_mlkit_commons"),
            ],
            path: "Sources/google_mlkit_barcode_scanning"
        )
    ]
)
