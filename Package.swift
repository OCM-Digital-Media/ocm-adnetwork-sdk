// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ocm-ad-network-sdk",
    products: [
        .library(
            name: "ocm-ad-network-sdk",
            targets: ["ocm-ad-network-sdk-wrapper"]),
    ],
    targets: [
        .binaryTarget(
            name: "OCMAdNetworkIOS",
            url: "https://cdn.orangeclickmedia.com/sdk/1.0.6/OCMAdNetworkIOS.xcframework.zip",
            checksum: "7312515ffdb1b3837e43d2f0f6b5c39c49cc37544719b0e2e354da1ed8dd719e"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            url: "https://cdn.orangeclickmedia.com/sdk/1.0.6/PrebidMobile.xcframework.zip",
            checksum: "ad4b7263351ea3c34b97d35152d9d33e72b319fccda247cf93d4d63c4c4931ba"
        ),
        .binaryTarget(
            name: "GoogleMobileAds",
            url: "https://cdn.orangeclickmedia.com/sdk/1.0.6/GoogleMobileAds.xcframework.zip",
            checksum: "de3580f7a70d68618ba342132155fd6ef270ea26a055ad17ff511ecf114a9622"
        ),
        .binaryTarget(
            name: "UserMessagingPlatform",
            url: "https://cdn.orangeclickmedia.com/sdk/1.0.6/UserMessagingPlatform.xcframework.zip",
            checksum: "b94c0188bb2af6fa8b4cf7933728d5c6b4ba117d697632f3d0ce0d0ab14c4b93"
        ),
        .target(
            name: "ocm-ad-network-sdk-wrapper",
            dependencies: [
                "OCMAdNetworkIOS",
                "PrebidMobile",
                "GoogleMobileAds",
                "UserMessagingPlatform"
            ],
            path: "Sources/ocm-ad-network-sdk-wrapper"
        )
    ]
)
