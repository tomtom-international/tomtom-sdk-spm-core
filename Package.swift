// swift-tools-version: 6.0

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.74.0"

let package = Package(
    name: "TomTomSDKCoreFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [ /* products are set later */ ],
    dependencies: [],
    targets: [ /* targets are set later */ ],
    swiftLanguageModes: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "ef4c40147ee3d9c5afb7f1371fadea7e5b11d4db357b174e641721f1832b6bd6", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKVisualizationCommon", sha: "279f0feb8e749bf1766100af0784df59eace7297d2e11d43409d7431a55a39c0", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoute", sha: "a0704e1612a361a2daaf4b1b652d5e3b71be8f7478d3c18b4018f95410223708", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "8b78dae005d00c8c062beecae76eb32e3089f95509808c9ba1061938adc594fa", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "acc2d0654be008086881d4610aee1ad1e47e301a458ca3b849217f3bd61de354", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "97e116387f4e92803aaba64e01331f3cdc6245e4faeb0d854a22fe3d93bccff8", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "36351b669b6b4623f4a4c898f4a583ff08f48a856cdefcdeca61b392cfe19a3f", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "c846e088c1aea2c3ed364c05382e7b0e360e75577080c999c8d874edebfe2e1f", version: "0.74.0"),
    Module("TomTomSDKMapDisplay", sha: "1432a964069a5152aba7956945fa30f32323e663159f9d51b82f19e22f3b6d36", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKMapTileStoreCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKMapTileStoreCommon", sha: "c789b4f2173facf3f438f6ed1be94200b04a3bb168446bc7777584415e53510d", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "bdf5e44529add4dcb7fce922548d18b4abbdb9714416e1fbf53c447ccb6017a3", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "e798c2da3979d7d62a3c1ab80f2216cfe99d61ab4564059cbe491877a38a26dc", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKPersonalData", sha: "49f77735d8d9b8ba752aed22e8a2ebbad83d13b03a0bb1e16ce4a10673963e62", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "4b0e44c6662221622be638151957a2c54cc570a86dd0c9aba243b7807bf33fd5", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearch", sha: "86d6bd22139f39b52dcb9e55306714909eef063bee8221254a2d796ac65130b4", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "ae1203a86f3365e372a46f9fd11ace17561a541d15666b2be82d630976658bcd", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "f5ef2493101a87c38e834906b16de593f32e4c99c1f8db6ecfb7729a01d4baaa", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchUI", sha: "a87841f3d48bb472ec3b2cc1e155449dc3094cbde1588dd833cee9970418f218", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "e5a9cbc0cc7796b053dee636692b67511a519ab2cfc333fae3af5435613d4fb6", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "4a2cb6d384391e911e523508462ca205cf171add30f970ea4efc8fe2bac2006a", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "7bdeb0b34268d7a1853c2564e743424faea1d73e18c03afc150330a4a7fa2efb", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "b855e2fbab8e0b066682838e356e74d92d1af84499370b14a5693870df0232c0", version: "0.74.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "2beceed8b18226d0027eab1e44d9e2e3a0d5f105ec6e62ad2710ed0a6058e0f2", version: "0.74.0"),
    Module("TomTomSDKTraffic", sha: "260f320a38f6a53bc4c19ed3c2a85a78fc71c27c51e9eda009cd0fecf9b94cbe", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "58f93b0f9b84454ab5a28bc31ac6f7563e0373724dde464deedeb9d975fdf5a6", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "a1663102b05f81cc9e46f219028a1e9f58ec7fbc7ebf54b5e293991ee6258698", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKVehicle", sha: "2b9f292839318c77c51023744008690b1fcbef7b68b04554d2a91da0f37122b0", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "183d031bddcd069543dd6d9cbe6822a5096349da4492de7fccf906e3f612d5ad", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "a503471d12e2dfda36e25523510bb6a792121d4956bb806622a76b1887f3e704", version: "0.74.0"),
    Module("TomTomSDKRoutingVisualization", sha: "fd9060d64da8a901b028f0d729e664ed33461d9ffceeb20108dc8b17eb40fd7f", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "c5a2d48f38fade9ecded9f5a7b5312b0f604717b3982599a2da9ab0fe164ac76", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "a38210e49db326f3fd49a5d10bfcf5ff44d2e0c7cccaeed08b7966cab738bc5b", version: "0.74.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "e60dfb8327500c6fae652efa79189b5d3f2c2bf7684e9aa2cd36b598ac00fb30", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "e055640a78006ac4eee7029e98c2657edb4cd19aa04c4b5aa95ecfc0b44b79ec", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "c01de6b465a1cf87c90a5d2f7599ee82ab8cb6e30ec80f4540ef12c83a15ca09", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "3372a1c0ec67ecf3da10f1734aaa30ec08d96dcb2048df12c96fa46bc785f568", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "85887bba961427348506b93c0a79b458aa690a49a8fd9bd8302ab0339504314d", version: "0.74.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoute"),
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

    typealias StringLiteralType = String
}

extension Array where Element == Module {
    var products: [Product] {
        compactMap { $0.product }
    }

    var targets: [Target] {
        flatMap { $0.targets }
    }
}
