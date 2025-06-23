// swift-tools-version: 6.1
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
            url: "https://cdn.orangeclickmedia.com/sdk/1.0.4/OCMAdNetworkIOS.xcframework.zip",
            checksum: "b57a539e960852fea079c717dcc813982fe46df2f63eadfc2975c54353e252a4"
        ),
        .binaryTarget(
            name: "PrebidMobile",
            url: "https://cdn.orangeclickmedia.com/sdk/1.0.4/PrebidMobile.xcframework.zip",
            checksum: "6047e341164bdadd87abb459c16ae30af915bba5eaa31be2dd5ed5ec937439ed"
        ),
        .binaryTarget(
            name: "GoogleMobileAds",
            url: "https://cdn.orangeclickmedia.com/sdk/1.0.4/GoogleMobileAds.xcframework.zip",
            checksum: "af17e8b1f8482e937cdbfda52f166fa78a7b417d70970e2599c46dfb162c10f0"
        ),
        .binaryTarget(
            name: "UserMessagingPlatform",
            url: "https://cdn.orangeclickmedia.com/sdk/1.0.4/UserMessagingPlatform.xcframework.zip",
            checksum: "62acec71648130aea4ea8763dba3f44d040b3eac91a216f78138de755f273038"
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
