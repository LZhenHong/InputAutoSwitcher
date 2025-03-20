// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Model",
  products: [
    .library(name: "Model", targets: ["Model"]),
  ],
  targets: [
    .target(name: "Model"),
    .testTarget(name: "ModelTests", dependencies: ["Model"]),
  ]
)
