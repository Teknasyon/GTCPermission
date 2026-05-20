// swift-tools-version: 6.1
//
// GTCPermission — Swift Package Manager manifest.
//
// Each permission type is exposed as a *package trait*. Only the traits enabled
// by the consumer cause the corresponding `PERMISSION_*` compile flag to be
// defined inside the `Permission` target — so consumers pay (binary size + Info.plist
// usage description scrutiny) only for the permission domains they actually use.
//
// Example consumer usage from another Package.swift:
//
//     .package(
//         url: "https://github.com/Teknasyon/GTCPermission.git",
//         from: "4.0.0",
//         traits: ["Notifications", "Contacts", "Camera", "Photos", "Location", "Microphone"]
//     )
//

import PackageDescription

let package = Package(
    name: "GTCPermission",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Permission", targets: ["Permission"])
    ],
    traits: [
        .trait(name: "Bluetooth"),
        .trait(name: "Camera"),
        .trait(name: "Contacts"),
        .trait(name: "ContactsLegacy"),
        .trait(name: "Events"),
        .trait(name: "Location"),
        .trait(name: "MediaLibrary"),
        .trait(name: "Microphone"),
        .trait(name: "Motion"),
        .trait(name: "Notifications"),
        .trait(name: "Photos"),
        .trait(name: "Reminders"),
        .trait(name: "Siri"),
        .trait(name: "SpeechRecognizer")
    ],
    targets: [
        .target(
            name: "Permission",
            path: "Sources/Permission",
            swiftSettings: [
                .define("PERMISSION_BLUETOOTH", .when(traits: ["Bluetooth"])),
                .define("PERMISSION_CAMERA", .when(traits: ["Camera"])),
                .define("PERMISSION_CONTACTS", .when(traits: ["Contacts"])),
                .define("PERMISSION_CONTACTS_LEGACY", .when(traits: ["ContactsLegacy"])),
                .define("PERMISSION_EVENTS", .when(traits: ["Events"])),
                .define("PERMISSION_LOCATION", .when(traits: ["Location"])),
                .define("PERMISSION_MEDIA_LIBRARY", .when(traits: ["MediaLibrary"])),
                .define("PERMISSION_MICROPHONE", .when(traits: ["Microphone"])),
                .define("PERMISSION_MOTION", .when(traits: ["Motion"])),
                .define("PERMISSION_NOTIFICATIONS", .when(traits: ["Notifications"])),
                .define("PERMISSION_PHOTOS", .when(traits: ["Photos"])),
                .define("PERMISSION_REMINDERS", .when(traits: ["Reminders"])),
                .define("PERMISSION_SIRI", .when(traits: ["Siri"])),
                .define("PERMISSION_SPEECH_RECOGNIZER", .when(traits: ["SpeechRecognizer"]))
            ],
            linkerSettings: [
                .linkedFramework("Speech", .when(traits: ["SpeechRecognizer", "Siri"]))
            ]
        )
    ]
)
