// swift-tools-version:5.5
import PackageDescription

_ = Package(
	name: "Aviary",

	products: [
		.library(name: "Aviary", targets: ["Access"])
	],

	targets: [
		.target(name: "Access"),
	]
)
