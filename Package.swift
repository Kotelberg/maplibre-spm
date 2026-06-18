// swift-tools-version:5.7
import PackageDescription

// HataHub fork of MapLibre Native (Metal + GL), built from
// github.com/Kotelberg/maplibre-native. The xcframework binary is hosted on R2;
// this package is just the manifest so EAS / SPM can fetch it remotely.
// 1.0.11: 1.0.10 + fix pinch-zoom shadow flicker. Sticky shadow-map cache now rescales the cached
//        light matrices per frame by 1/2^(zoom-cachedZoom) (ShadowFrustumState.liveCascades) so the
//        cached depth map stays world-aligned during a zoom with no re-render and no drift/snap.
//        At zoom-stable (ratio 1) liveCascades == cascades, so the settled view is unchanged.
// 1.0.10: 1.0.9 + fix model/CustomGeometry GL shader "uniform type mismatch" link failure on
//        strict iOS-GL (UBO members lacked highp / fragment lacked precision). Model layer only.
// 1.0.9: release-config build of HEAD d8b47c158c98 (gl/fill-extrusion-instancing) — sticky shadow-map
//        cache + 4x MSAA + cross-platform 3D cast shadows. Building "grow-in" reveal is disabled by
//        default (GL-only, gated off on Metal), so iOS shows only the style's z14→z15 height ramp.
// 1.0.8: release-config (opt, asserts off) build of HEAD 0a81f793 — shadow/model perf + cascade-materialize
//        3D crash fix; never textureDirty at Texture2D::bind; built --config=release (NDEBUG +
//        NS_BLOCK_ASSERTIONS). (1.0.6 skipped: edge-cache poisoned.)
let package = Package(
    name: "MapLibre",
    products: [
        .library(name: "MapLibre", targets: ["MapLibre"])
    ],
    targets: [
        .binaryTarget(
            name: "MapLibre",
            url: "https://map.hatahub.com.ua/spm/MapLibre-1.0.11.xcframework.zip",
            checksum: "b2981a0d98d14ede248fa18f6cdc2e86c2a91c184c1f5ab8434399d531ee49b9"
        )
    ]
)
