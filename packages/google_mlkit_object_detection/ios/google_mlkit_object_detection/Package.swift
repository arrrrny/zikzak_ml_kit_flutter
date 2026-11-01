// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "google-mlkit-object-detection",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        .library(
            name: "google-mlkit-object-detection",
            targets: ["google_mlkit_object_detection"])
    ],
    dependencies: [
        .package(name: "google_mlkit_commons", path: "../google_mlkit_commons"),
        .package(
            url: "https://github.com/arrrrny/google-mlkit-swiftpm",
            revision: "e656a69ce31ec975fd83f0655bb5c6671c2e08ee"
        ),
    ],
    targets: [
        .target(
            name: "google_mlkit_object_detection",
            dependencies: [
                .product(name: "MLKitObjectDetection", package: "google-mlkit-swiftpm"),
                .product(name: "MLKitObjectDetectionCustom", package: "google-mlkit-swiftpm"),
                .product(name: "google-mlkit-commons", package: "google_mlkit_commons"),
            ],
            path: "Sources/google_mlkit_object_detection"
        )
    ]
)
