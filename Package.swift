// swift-tools-version:5.7
import PackageDescription

// HataHub fork of MapLibre Native (Metal + GL), built from
// github.com/Kotelberg/maplibre-native. The xcframework binary is hosted on R2;
// this package is just the manifest so EAS / SPM can fetch it remotely.
// 1.0.4: shadow/model render-thread perf (1024 map, pitch-gated cascades, sidecar-split, cascade dedup, model debounce).
// 1.0.5: model zoomGrow band 15->15.2 retuned to 14->15 (integer-aligned) to sync with fill-extrusion grow.
// 1.0.7: fix 3D-render SIGABRT — eagerly materialize cascade shadow textures so an inactive cascade is
//        never textureDirty at Texture2D::bind; built --config=release (NDEBUG + NS_BLOCK_ASSERTIONS) so
//        diagnostic asserts compile out and degrade gracefully. (1.0.6 skipped: edge-cache poisoned.)
let package = Package(
    name: "MapLibre",
    products: [
        .library(name: "MapLibre", targets: ["MapLibre"])
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://map.hatahub.com.ua/spm/MapLibre-1.0.7.xcframework.zip",
            checksum: "fbfaaa8bca8935b9d4d0b47d693b249e159a5e9a57b77a1db3ebc29a36b4b20a"
        )
    ]
)
