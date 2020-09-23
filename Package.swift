// swift-tools-version:5.3
import PackageDescription

_ = Package(
	name: "Aviary",

	products: [
		.library(name: "Aviary", targets: ["Connection"])
	],

	targets: [
		.target(name: "Connection"),
	]
)
