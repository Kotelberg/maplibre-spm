// swift-tools-version:5.7
import PackageDescription

// HataHub fork of MapLibre Native (Metal + GL), built from
// github.com/Kotelberg/maplibre-native. The xcframework binary is hosted on R2;
// this package is just the manifest so EAS / SPM can fetch it remotely.
// 1.0.4: shadow/model render-thread perf (1024 map, pitch-gated cascades, sidecar-split, cascade dedup, model debounce).
let package = Package(
    name: "MapLibre",
    products: [
        .library(name: "MapLibre", targets: ["MapLibre"])
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://map.hatahub.com.ua/spm/MapLibre-1.0.4.xcframework.zip",
            checksum: "4454d354234cc3138ea53766d737675829ff2e8c4ccdf535b3ed9192dcab5b9e"
        )
    ]
)
