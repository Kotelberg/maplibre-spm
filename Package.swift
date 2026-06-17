// swift-tools-version:5.7
import PackageDescription

// HataHub fork of MapLibre Native (Metal + GL), built from
// github.com/Kotelberg/maplibre-native. The xcframework binary is hosted on R2;
// this package is just the manifest so EAS / SPM can fetch it remotely.
// 1.0.4: shadow/model render-thread perf (1024 map, pitch-gated cascades, sidecar-split, cascade dedup, model debounce).
// 1.0.5: model zoomGrow band 15->15.2 retuned to 14->15 (integer-aligned) to sync with fill-extrusion grow.
let package = Package(
    name: "MapLibre",
    products: [
        .library(name: "MapLibre", targets: ["MapLibre"])
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://map.hatahub.com.ua/spm/MapLibre-1.0.5.xcframework.zip",
            checksum: "d19c054ba2cef9caec0347b2edd25c53a7fe0c8c3024ba3da25faf07b0a18e0b"
        )
    ]
)
