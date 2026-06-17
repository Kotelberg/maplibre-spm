// swift-tools-version:5.7
import PackageDescription

// HataHub fork of MapLibre Native (Metal + GL), built from
// github.com/Kotelberg/maplibre-native. The xcframework binary is hosted on R2;
// this package is just the manifest so EAS / SPM can fetch it remotely.
// 1.0.8: release-config (opt, asserts off) build of HEAD 0a81f793 — shadow/model perf + cascade-materialize 3D crash fix.
// 1.0.8: release-config (opt, asserts off) build of HEAD 0a81f793 — shadow/model perf + cascade-materialize 3D crash fix.
// 1.0.8: release-config (opt, asserts off) build of HEAD 0a81f793 — shadow/model perf + cascade-materialize 3D crash fix.
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
            url: "https://map.hatahub.com.ua/spm/MapLibre-1.0.8.xcframework.zip",
            checksum: "a9fa79d90e5358816afb9f641e5ff0acb43b663941b556d66c4155ecbb35090d"
        )
    ]
)
