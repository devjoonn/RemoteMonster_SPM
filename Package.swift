// swift-tools-version: 5.7

import PackageDescription

let package = Package(
	name: "RemoteMonster",
	platforms: [
		.iOS(.v13)
	],
	products: [
		.library(
			name: "RemoteMonster",
			targets: ["RemoteMonster"]),
		.library(
			name: "WebRTC",
			targets: ["WebRTC"]
		)
	],
	dependencies: [
		.package(
			url: "https://github.com/apple/swift-protobuf.git",
			"1.15.0" ..< "2.0.0"
		)
	],
	targets: [
		.binaryTarget(
			name: "RemoteMonster",
			url: "https://github.com/devjoonn/RemoteMonster_SPM/releases/download/v2.7.17/RemoteMonster.xcframework.zip",
			checksum: "cee50f4edcf13a3bc05486733bd59c609190c44adb8225d6ad79db23a5ac5a13"
		),
		.binaryTarget(
			name: "WebRTC",
			url: "https://github.com/devjoonn/RemoteMonster_SPM/releases/download/v2.7.17/WebRTC.framework.zip",
			checksum: "da292b0474b2330b100e220685204209f8e9b1149ba9b0ac15b48739627efa31"
		)
	]
)
