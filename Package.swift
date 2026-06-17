// swift-tools-version:5.7
import PackageDescription

// HataHub fork of MapLibre Native (Metal + GL), built from
// github.com/Kotelberg/maplibre-native. The xcframework binary is hosted on R2;
// this package is just the manifest so EAS / SPM can fetch it remotely.
// 1.0.3: instanced fill-extrusion + wall cast shadows (Metal); GL/Vulkan shadow ports.
let package = Package(
    name: "MapLibre",
    products: [
        .library(name: "MapLibre", targets: ["MapLibre"])
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://map.hatahub.com.ua/spm/MapLibre-1.0.3.xcframework.zip",
            checksum: "9196b16f3841dd178c04b08d4f142be3256974d9fd5b42d1eea18e6c76077a04"
        )
    ]
)
