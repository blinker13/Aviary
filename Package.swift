// swift-tools-version:5.3
import PackageDescription

_ = Package(
	name: "Aviary",

	products: [
		.library(name: "Aviary", targets: ["Connecting"])
	],

	targets: [
		.target(name: "Connecting"),
	]
)
