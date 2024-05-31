// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Ads",
	platforms: [.iOS("12.0"), .tvOS("12.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Ads",
			targets: ["GXCoreModule_SD_AdsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.0.0-beta.36")
	],
	targets: [
		.target(name: "GXCoreModule_SD_AdsWrapper",
				dependencies: [
					"GXCoreModule_SD_Ads",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Ads",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Ads-2.0.0-beta.36.xcframework.zip",
			checksum: "c8cecbc6473701146add70d96fd4b6d25173de8695469da157c2263185c73f67"
		)
	]
)