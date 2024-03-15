# TomTomSDKCoreFrameworks

The TomTomSDKCoreFrameworks package provides iOS modules that help developers display and configure a map, search for locations and points of interest (POIs), plan routes, and accurately display locations.

## Requirements

1. Xcode 14.2+
1. Swift 5.7+
1. Deployment target: iOS 13+

## Installation

## Installation
### Adding the TomTomSDKCoreFrameworks package to your Xcode project
1. Add a package dependency to your Xcode project:
    1. Select `File` → `Add Package Dependencies...` (or `File` → `Add Packages...` in Xcode 14).
    2. Enter the next URL in a search field: https://github.com/tomtom-international/tomtom-sdk-spm-core
    3. Set `Dependency Rule` to `Exact Version`.
        > We recommend using the `Exact Version` to have a consistent resolution.
    4. Ensure the `Add to Project` field contains your project.
    5. Click `Add Package` and wait for the Xcode to resolve the package.
    6. You should see the list of `Package Products`.
    7. Select a product you want to add to your project.
    8. And click `Add Package`.
2. Add more products to your target:
    1. Select the target to which you want to add dependencies.
    2. Select the `General` section and scroll to the `Frameworks, Libraries, and Embedded Content` list.
    3. Click `+` button.
    4. Select the products you want to add and click the `Add` button.
### Adding the TomTomSDKCoreFrameworks package to your SPM package
1. Add next line to your package dependencies in the `Package.swift` file:
    ```swift
    .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-core", exact: "0.43.0")
    ```
    > We recommend using the `exact` version to have a consistent resolution.
2. Add next required module to your target dependencies in the `Package.swift` file, e.g.:
    ```swift
    .product(name: "TomTomSDKCommon", package: "tomtom-sdk-spm-core")
    ```
3. The result package might look like:
    ```swift
    let package = Package(
        name: "MyLibrary",
        platforms: [.iOS(.v13)],
        products: [
            .library(name: "MyLibrary", targets: ["MyLibrary"]),
        ],
        dependencies: [
            .package(url: "https://github.com/tomtom-international/tomtom-sdk-spm-core", exact: "0.43.0")
        ],
        targets: [
           .target(name: "MyLibrary", dependencies: [
                .product(name: "TomTomSDKCommon", package: "tomtom-sdk-spm-core")
                /* add more products here */
           ]),
        ]
    )
    ```

## Usage

For more information, please refer to the [TomTom Maps SDK documentation](https://developer.tomtom.com/ios/maps/documentation/overview/introduction).
