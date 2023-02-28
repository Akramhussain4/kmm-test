// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/Akramhussain4/kmm-test/Storelab_Demo/shared-kmmbridge/0.3.1/shared-kmmbridge-0.3.1.zip"
let remoteKotlinChecksum = "40747a23bd2a3d8fe8934af3a82e617f7847015b8b09846b34250969bd0fa656"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)