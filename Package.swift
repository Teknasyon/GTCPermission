// swift-tools-version:5.7
import PackageDescription

let permissionDefines: [SwiftSetting] = [
    .define("PERMISSION_BLUETOOTH"),
    .define("PERMISSION_CAMERA"),
    .define("PERMISSION_CONTACTS"),
    .define("PERMISSION_CONTACTS_LEGACY"),
    .define("PERMISSION_EVENTS"),
    .define("PERMISSION_LOCATION"),
    .define("PERMISSION_MICROPHONE"),
    .define("PERMISSION_MOTION"),
    .define("PERMISSION_NOTIFICATIONS"),
    .define("PERMISSION_PHOTOS"),
    .define("PERMISSION_REMINDERS"),
    .define("PERMISSION_SPEECH_RECOGNIZER"),
    .define("PERMISSION_MEDIA_LIBRARY"),
    .define("PERMISSION_SIRI")
]

let package = Package(
    name: "GTCPermission",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Permission",
            targets: ["Permission"]
        )
    ],
    targets: [
        .target(
            name: "Permission",
            path: "Source",
            exclude: [
                "Supporting Files/Info.plist",
                "Supporting Files/PermissionFlags.xcconfig"
            ],
            swiftSettings: permissionDefines
        )
    ]
)

