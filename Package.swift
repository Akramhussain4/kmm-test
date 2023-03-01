// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/Akramhussain4/kmm-test/Storelab_Demo/shared-kmmbridge/0.3.2/shared-kmmbridge-0.3.2.zip"
let remoteKotlinChecksum = "db1f7b14cb60fe73e8e0bd5e76f86185e219fe24e0aa1f44c13d14fa6437dfc4"
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