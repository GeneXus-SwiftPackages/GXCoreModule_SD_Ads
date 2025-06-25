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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.2.0-beta.17")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_Ads-3.2.0-beta.17.xcframework.zip",
			checksum: "35f3d95ef654e9953b45aba1a2145c822fb28dcb763dccc922a1fd2f6bc824d5"
		)
	]
)