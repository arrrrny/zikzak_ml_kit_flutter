// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "google-mlkit-selfie-segmentation",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        .library(
            name: "google-mlkit-selfie-segmentation",
            targets: ["google_mlkit_selfie_segmentation"])
    ],
    dependencies: [
        .package(name: "google_mlkit_commons", path: "../google_mlkit_commons"),
        .package(
            url: "https://github.com/arrrrny/google-mlkit-swiftpm",
            revision: "45f4b8d27255b65383b9a5bde3b7ce839a2d7947"
        ),
    ],
    targets: [
        .target(
            name: "google_mlkit_selfie_segmentation",
            dependencies: [
                .product(name: "MLKitSegmentationSelfie", package: "google-mlkit-swiftpm"),
                .product(name: "google-mlkit-commons", package: "google_mlkit_commons"),
            ],
            path: "Sources/google_mlkit_selfie_segmentation"
        )
    ]
)
