// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_Ads",
	platforms: [.iOS("12.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_Ads",
			targets: ["GXCoreModule_SD_AdsWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.0.0-beta.20230711133237")
	],
	targets: [
		.target(name: "GXCoreModule_SD_AdsWrapper",
				dependencies: [
					"GXCoreModule_SD_Ads",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_Ads",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Ads-1.0.0-beta.20230711133237.xcframework.zip",
			checksum: "a8b99052d72a73551826756242a1f94f85358862aa32e31bbf26fc93ad4e49f4"
		)
	]
)