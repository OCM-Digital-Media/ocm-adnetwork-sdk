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
            url: "https://cdn.orangeclickmedia.com/sdk/1.2.8/OCMAdNetworkIOS.xcframework.zip",
            checksum: "8e701bbb83196c97e4eeb75c4d8de038ba940531da8dd0b1be2f59962ded2ea9"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            url: "https://cdn.orangeclickmedia.com/sdk/1.2.7/PrebidMobile.xcframework.zip",
            checksum: "f789390f7278551e34299a78dc2650a4153a4bc84a6ee5c81ca6eae26fd0b0a1"
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
