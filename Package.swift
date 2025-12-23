// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Ads",
	platforms: [.iOS("15.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Ads",
			targets: ["GXCoreModule_SD_AdsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.1.0-beta.15")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Ads-4.1.0-beta.15.xcframework.zip",
			checksum: "5999d8018453a92b87dd5dfce2fcd27eb275b9970ef5a9bd7bea46b64de6b6aa"
		)
	]
)