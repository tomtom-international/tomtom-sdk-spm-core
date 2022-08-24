# TomTomSDKCore

The TomTomSDKCore package provides iOS modules that help developers display and configure a map, search for locations and points of interest (POIs), plan routes, and accurately display locations.
<!---->
## Requirements

1. Xcode 13.3+
1. Swift 5.6+
1. Deployment target: iOS 13+

## Installation

1. Add the TomTomSDKCore package to your project from Xcode:
 * Select “File” → “Swift Packages” → “Add Package Dependency”.
 * Enter https://github.com/tomtom-internal/tomtom-sdk-spm-core.
2. Or, if you are creating a framework, add the package dependency to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/tomtom-internal/tomtom-sdk-spm-core", .exact("<SDK_VERSION>"))
]
```

> Please use exact versioning as the semantic versioning is not fully supported yet. 

## Usage

For more information, please refer to the [TomTom maps SDK documentation](https://developer.tomtom.com/ios/maps/documentation/overview/introduction).

