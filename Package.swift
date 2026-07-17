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
            url: "https://cdn.orangeclickmedia.com/sdk/1.1.4/OCMAdNetworkIOS.xcframework.zip",
            checksum: "a1a01c9f6963295d33e5ed5c6d86af9d229d02de639d4190660d3d082f08b442"
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
        .binaryTarget(
            name: "OutbrainSDK",
            url: "https://cdn.orangeclickmedia.com/sdk/1.1.2/OutbrainSDK.xcframework.zip",
            checksum: "51fa3218df9c0c9d41353fcd36e5556cf99c2d6d07cdeaedb16cce6e94e46de4"
        ),
        .binaryTarget(
            name: "TeadsSDK",
            url: "https://cdn.orangeclickmedia.com/sdk/1.1.2/TeadsSDK.xcframework.zip",
            checksum: "67f7469e061b7a3b6cd4d7a88ef1efa8e4cc3fd657218021fb35cef1da8a932a"
        ),
        .binaryTarget(
            name: "OMSDK_Teadstv",
            url: "https://cdn.orangeclickmedia.com/sdk/1.1.2/OMSDK_Teadstv.xcframework.zip",
            checksum: "8f2658914576eb36bc3c9dfbb6b6423bcd57e9441949eb4182eef2a532ab9b43"
        ),
        .target(
            name: "ocm-ad-network-sdk-wrapper",
            dependencies: [
                "OCMAdNetworkIOS",
                "PrebidMobile",
                "GoogleMobileAds",
                "UserMessagingPlatform",
                "OutbrainSDK",
                "TeadsSDK",
                "OMSDK_Teadstv"
                
            ],
            path: "Sources/ocm-ad-network-sdk-wrapper"
        )
    ]
)
