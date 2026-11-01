// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "google-mlkit-pose-detection",
    platforms: [
        .iOS("15.5")
    ],
    products: [
        .library(
            name: "google-mlkit-pose-detection",
            targets: ["google_mlkit_pose_detection"])
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
            name: "google_mlkit_pose_detection",
            dependencies: [
                .product(name: "MLKitPoseDetection", package: "google-mlkit-swiftpm"),
                .product(name: "MLKitPoseDetectionAccurate", package: "google-mlkit-swiftpm"),
                .product(name: "google-mlkit-commons", package: "google_mlkit_commons"),
            ],
            path: "Sources/google_mlkit_pose_detection"
        )
    ]
)
