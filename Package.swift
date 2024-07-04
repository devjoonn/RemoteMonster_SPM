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
			url: "https://github.com/devjoonn/RemoteMonster_SPM/releases/download/v2.7.16/RemoteMonster.framework.zip",
			checksum: "a0cbf2f272b69f52d4d7c7f872a07ddf9f3cd6d6c2362e2039b059ee5e59a961"
		),
		.binaryTarget(
			name: "WebRTC",
			url: "https://github.com/devjoonn/RemoteMonster_SPM/releases/download/v2.7.16/WebRTC.framework.zip",
			checksum: "e55cc77382e51a7c2c631d1657a04b84c1ef58d6246f9fadd93d74a5a391dc45"
		)
	]
)
