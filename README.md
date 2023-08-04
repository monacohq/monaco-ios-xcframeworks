# monaco-ios-xcframeworks

ZIP archives that contain XCFrameworks we need for moanco-ios

## Available XCFrameworks

### JumioMobileSDK `3.9.4`

https://github.com/CocoaPods/Specs/blob/master/Specs/0/d/d/JumioMobileSDK/3.9.4/JumioMobileSDK.podspec.json

| Name                 | Version | iOS Version | SDK Version | Architectures    |
| :------------------- | :------ | :---------- | :---------- | :--------------- |
| BAMCheckout          | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| DocumentVerification | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| iProov               | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| JumioCore            | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| JumioIProov          | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| JumioNFC             | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| Microblink           | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| Netverify            | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| NetverifyBarcode     | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| SocketIO             | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |
| Starscream           | `3.9.4` | `10.0`      | `14.4`      | `x86_64` `arm64` |

## Usage Guide in SPM

https://developer.apple.com/documentation/xcode/distributing-binary-frameworks-as-swift-packages

- in your `Package.swift` add the following
  ```swift
  .binaryTarget(
    name: "SomeRemoteBinaryPackage",
    url: "https://url/to/some/remote/xcframework.zip",
    checksum: "The checksum of the ZIP archive that contains the XCFramework."
  ),
  ```

## Conversion Guide

Normally, you don't need to convert the frameworks yourself. The converted frameworks are already available inside the [Releases](https://github.com/monacohq/monaco-ios-xcframeworks/releases) in this repository. If you want to generate the frameworks yourself, you can follow the steps below.

### Required Tools

- [Xcode](https://developer.apple.com/xcode/) for converting the frameworks to XCFrameworks

- [Carthage](https://github.com/Carthage/Carthage) for downloading the frameworks
  ```bash
  brew install carthage
  ```

### JumioMobileSDK `3.9.4`

- run the `build.sh` in `JumioMobileSDK-3.9.4`
- the resulting XCFrameworks will be in `JumioMobileSDK-3.9.4/xcframeworks`
- run the `zip.sh` in `JumioMobileSDK-3.9.4`
- the resulting XCFrameworks in zip version will be in `JumioMobileSDK-3.9.4/zips`
- run the `checksum.sh` in `JumioMobileSDK-3.9.4`
- the resulting checksums will be printed in the console

## References

- [Convert a Universal (FAT) Framework to an XCFramework](https://medium.com/strava-engineering/convert-a-universal-fat-framework-to-an-xcframework-39e33b7bd861)
- [Xcode 中使用 SPM 和 Build Configuration 的一些坑](https://onevcat.com/2022/10/spm-in-xcode/#%E7%BC%96%E8%AF%91%E6%9E%B6%E6%9E%84%E5%92%8C-apple-silicon)
- [How to build an XCFramework for Apple Silicon M1 and Intel macs](https://www.youtube.com/watch?v=A6hTbWv_1w8&ab_channel=LocoMoviles)
- [Hacking native ARM64 binaries to run on the iOS Simulator](https://bogo.wtf/arm64-to-sim.html)
- [Distributing binary frameworks as Swift packages](https://developer.apple.com/documentation/xcode/distributing-binary-frameworks-as-swift-packages)
