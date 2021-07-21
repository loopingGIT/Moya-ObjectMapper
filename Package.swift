// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Moya-ObjectMapper",
    products: [
        .library(name: "Moya-ObjectMapper", targets: ["Moya-ObjectMapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "14.0.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.1.0"))
    ],
    targets: [
        .target(
            name: "Moya-ObjectMapper",
            dependencies: [
                "Moya",
                "ObjectMapper"],
            path: "Source/Core",
            exclude: [
                "Sample"])
    ]
)
