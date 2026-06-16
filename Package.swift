// swift-tools-version:5.7
import PackageDescription

// HataHub fork of MapLibre Native (Metal + GL), built from
// github.com/Kotelberg/maplibre-native. The xcframework binary is hosted on R2;
// this package is just the manifest so EAS / SPM can fetch it remotely.
// 1.0.2: adds directional fill-extrusion shadows (iOS/Metal, cascaded shadow maps).
let package = Package(
    name: "MapLibre",
    products: [
        .library(name: "MapLibre", targets: ["MapLibre"])
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://map.hatahub.com.ua/spm/MapLibre-1.0.2.xcframework.zip",
            checksum: "38d6a3bf6d33126e815644203327b470ac4da214eacf553c467a1c447b411a6b"
        )
    ]
)
