// swift-tools-version: 5.7

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.59.0"

let package = Package(
    name: "TomTomSDKCoreFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [ /* products are set later */ ],
    dependencies: [],
    targets: [ /* targets are set later */ ],
    swiftLanguageVersions: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "9202417fe93aa3e55101bf111ddbd508d34cc5400efc3bf9b187cbd719c893fb", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "0f75b2d96b42722cbaa024a52231966b3dd1e01d7e96fc9406593aa9b673b4ac", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "966ffc90cff85a16e2586ec16681aa56b3409cc3d451f0b637538b9f3a24c6cc", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "c82e6a25209ea48b837db3445c4e275d2a335df9be4e90fe599e874140b12578", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "ece5642990b958384f36c4e71a4c6e2a330a0c657f0378ec303978d889e0e2cb", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "957145235d71676b72ffb541c4e1cbc83d68496c7f09f63730768922374ab638", version: "0.59.0"),
    Module("TomTomSDKMapDisplay", sha: "3fad95529eca1c5e4dd3f91ad0b2348f2fc4df7557746fc5944b9fabe37e4a6f", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "727e2b3bf25de37d4877754490a17056704481d81dcae579f1f973ab6d2c0e68", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "e639c5d82b7720ffe8a92191a2108bf6a348633603ec35ce6bc1e27892381806", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "4e3978f442379ed3ad6c97c82ef15dfb4cb9cae2a4c1ce188331458f6d33880f", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "d314e3c56f206a989c10aaf6b5225df2fec55f6ea058ed777126dd4b39681921", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "6c91e7fa874ceb28900867e690767f9118fab88af032b8e9e1577374379aa00b", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "90216e4960bac7f6becd50c6710accbf0fcf54c288f13b57f4d4f5857d0b5e31", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "ecf6d5d9cbbf50b5fcec021759cb3e0aa036d25dbe0e769822718c4c25c6ce8c", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "80557b3e383cc71cccaf179b8a41e243b42f1628826da939e597d8565b9aa358", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "548b5c8da4557a5b4eefd067a42d238ea954b90e5d9927bac01de117c77bd0f8", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "24bc7df9f7f2717ce1277676fa2b444bd2318e532e77b50da050233b4f79b414", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "ed3965ea54aa84f2cb59f2224b4f3d2a5f08df419a0cca5c0afbfd6faf3b3c87", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "95aae1692254cb6f8459b7b7596973f45075fa897b84c10e64143dd391fb32f7", version: "0.59.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "91637ea5dfeecc373512599a5aa37da34c72756c895e8c72175b5815798c8135", version: "0.59.0"),
    Module("TomTomSDKTraffic", sha: "7dd2f0842becfb64524183443edbf32d5bd2401cb2ad63bf20a21ad8da8ecdea", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "f1fbf00fdc13ec39c5e41863dcc4fa6bf6daa3af984598c82c890549b608e435", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "42a0540eaad9a48fac1970cf56cb47c954b5ceca8b6b57cb9c5a5115dbc1308f", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "591d1476fe58959e0a236dbde7ba6500d7d10fd9de2f2b9705a8fb7cb32a838a", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "cf0c5450ac2ac4d0c118acd64d56838885f6632721eb02fce458ded98f523a9e", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "354730c9e5a588d79414efaa975543aa891f0e17c2d4df44ce1699794336ae38", version: "0.59.0"),
    Module("TomTomSDKRoutingVisualization", sha: "8d9a68918e61c65a5bb7a61ee9cc9de1bb947a12c5814712a5f75d1731d8fa24", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "e87f059a794d3796fa694507c513589e1744e01580f621300e1920c50aefa17e", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "e6faf428b1719f6ac489f51c3c5ea9e6a6e012a8110cc6fa2f5065f27fa5086c", version: "0.59.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "d5dcb2c6ae49e879717dd42c0e1892a9900f2bd9fcdccf314d64ddd6ad7584c5", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "c6dbc6267dead3fcc73e301ce2432095c639448b18edf8c5ebfdd52198d73900", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "b0e44e37fdc6225dacec23f5413cd25d887a6ee20df5cd8e0e0ccab339c17d2a", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "c6852ac4d5718da47c610df7b7a0d81111129ea5907a4ed6dccec61cbda82ff4", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "04ad658cd9561632f82bd9190869da274b7c1224c99fe010dfde1833b8d4cace", version: "0.59.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
]

package.products = modules.products
package.targets = modules.targets

private extension String {
    func artefactUrl(version: String) -> String {
        "https://repositories.tomtom.com/artifactory/spm/TomTomSDK/Core/binaries/\(self)/\(version)/\(self).zip"
    }

    var wrapperName: String {
        return self + "Wrapper"
    }
}

struct Module {
    let frameworkName: String
    let sha: String
    let dependencies: [ModuleDependency]
    let version: String
    let isProduct: Bool

    init(_ frameworkName: String, sha: String, version: String, isProduct: Bool = true, dependencies: [ModuleDependency] = []) {
        self.frameworkName = frameworkName
        self.sha = sha
        self.version = version
        self.isProduct = isProduct
        self.dependencies = dependencies
    }

    var product: Product? {
        return isProduct ? .library(name: frameworkName, targets: [wrapperName]) : nil
    }

    var wrapperName: String {
        frameworkName.wrapperName
    }

    var targets: [Target] {
        let binaryTargetDependency: Target.Dependency = .target(name: frameworkName)
        let dependenciesTargets: [Target.Dependency] = dependencies.map { $0.dependency }
        let mainTargetDependencies = [binaryTargetDependency] + dependenciesTargets
        let mainTarget: Target = .target(name: wrapperName, dependencies: mainTargetDependencies)
        let binaryUrl = frameworkName.artefactUrl(version: version)
        let binaryTarget: Target = .binaryTarget(name: frameworkName, url: binaryUrl, checksum: sha)

        return [mainTarget, binaryTarget]
    }
}

struct ModuleDependency {
    let name: String
    let package: String?

    var dependency: Target.Dependency {
        if let package = package {
            return .product(name: name, package: package)
        }

        return .target(name: name.wrapperName)
    }

    static func thirdpartyPackageModule(_ name: String, package: String) -> ModuleDependency {
        ModuleDependency(name: name, package: package)
    }

    static func corePackageModule(_ name: String) -> ModuleDependency {
        ModuleDependency(name: name, package: nil)
    }
}

extension ModuleDependency: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self.init(name: value, package: nil)
    }

    public typealias StringLiteralType = String
}

extension Array where Element == Module {
    var products: [Product] {
        compactMap { $0.product }
    }

    var targets: [Target] {
        flatMap { $0.targets }
    }
}
