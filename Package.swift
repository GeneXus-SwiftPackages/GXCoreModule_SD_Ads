// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Ads",
	platforms: [.iOS("13.0"), .tvOS("13.0"), .visionOS("1.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Ads",
			targets: ["GXCoreModule_SD_AdsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "2.2.0-beta.26")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Ads-2.2.0-beta.26.xcframework.zip",
			checksum: "80821c531c493b984352508fa0932482c8a25a4ab6599357709c63fefa7fa62d"
		)
	]
)