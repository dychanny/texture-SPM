// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Texture",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "AsyncDisplayKit",
            targets: ["AsyncDisplayKit"]
        )
    ],
    targets: [
        .target(
            name: "AsyncDisplayKit",
            path: "Source",
            exclude: [
                "Info.plist"
            ],
            publicHeadersPath: ".",
            cSettings: [
                .define("AS_USE_VIDEO", to: "1"),
                .define("AS_USE_PHOTOS", to: "1"),
                .define("AS_USE_MAPKIT", to: "1"),
                .define("AS_USE_ASSETS_LIBRARY", to: "1"),
                .headerSearchPath("."),
                .headerSearchPath("Base"),
                .headerSearchPath("Debug"),
                .headerSearchPath("Details"),
                .headerSearchPath("Layout"),
                .headerSearchPath("Private"),
                .headerSearchPath("TextKit"),
                .headerSearchPath("TextExperiment"),
                .headerSearchPath("tvOS")
            ],
            cxxSettings: [
                .define("AS_USE_VIDEO", to: "1"),
                .define("AS_USE_PHOTOS", to: "1"),
                .define("AS_USE_MAPKIT", to: "1"),
                .define("AS_USE_ASSETS_LIBRARY", to: "1"),
                .headerSearchPath("."),
                .headerSearchPath("Base"),
                .headerSearchPath("Debug"),
                .headerSearchPath("Details"),
                .headerSearchPath("Layout"),
                .headerSearchPath("Private"),
                .headerSearchPath("TextKit"),
                .headerSearchPath("TextExperiment"),
                .headerSearchPath("tvOS"),
                .unsafeFlags(["-fno-exceptions"])
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("ImageIO"),
                .linkedFramework("CoreText"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Photos"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("MapKit"),
                .linkedFramework("AssetsLibrary"),
                .linkedLibrary("c++")
            ]
        )
    ],
    cxxLanguageStandard: .cxx11
)
