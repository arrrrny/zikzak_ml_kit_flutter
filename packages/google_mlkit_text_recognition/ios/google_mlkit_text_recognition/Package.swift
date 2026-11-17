// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "google-mlkit-text-recognition",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(
            name: "google-mlkit-text-recognition",
            targets: ["google_mlkit_text_recognition"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(
            url: "https://github.com/d-date/google-mlkit-swiftpm",
            exact: "9.0.3"
        )
    ],
    targets: [
        .target(
            name: "google_mlkit_text_recognition",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "MLKitTextRecognition", package: "google-mlkit-swiftpm"),
                // The plugin sources guard the non-Latin script branches
                // behind `#if canImport(...)` — but in the Xcode/SwiftPM
                // integration a target can IMPORT any sibling product of a
                // resolved package, so the guards evaluate TRUE even without
                // a product dependency and the branches compile in. The app
                // link then fails on the four script recognizer classes
                // (Undefined symbol: _OBJC_CLASS_$_MLKKoreanTextRecognizerOptions
                // et al.) because nothing links them. Declare every script
                // product the sources can import (zikzak_ml_kit_flutter:
                // spm-fixed carried the same declarations; upstream 1.0.3
                // dropped them while keeping the canImport guards).
                .product(name: "MLKitTextRecognitionChinese", package: "google-mlkit-swiftpm"),
                .product(name: "MLKitTextRecognitionDevanagari", package: "google-mlkit-swiftpm"),
                .product(name: "MLKitTextRecognitionJapanese", package: "google-mlkit-swiftpm"),
                .product(name: "MLKitTextRecognitionKorean", package: "google-mlkit-swiftpm")
            ],
            path: "Sources/google_mlkit_text_recognition"
        )
    ]
)
