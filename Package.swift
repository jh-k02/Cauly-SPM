// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "Cauly-SPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "CaulySDK",
            targets: ["CaulySDKResources"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "CaulySDK",
            path: "CaulySDK.xcframework"
        ),

        .target(
            name: "CaulySDKResources",
            dependencies: [
                .target(name: "CaulySDK")
            ],
            linkerSettings: [
                .linkedFramework("AVKit"),
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("EventKit"),
                .linkedFramework("AdSupport"),
                .linkedFramework("MessageUI",),
            ]
        )
    ]
)
