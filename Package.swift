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

let sdkVersion = "0.61.0"

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
    Module("TomTomSDKCommon", sha: "42f4e4b75c93e36448053e91f4d7adc22041979384cf8fff62dcf32cff665781", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "b8f37d59cdee5ec31f0a272e20374cc9d18cda26826e2ec8d456afbc02369545", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "a874409ebfdf87f11719c118e90982317ef8da6d3bd975e5c4145dc3021bd546", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "804b700618d133bd2a44450c1a5bf4845728410d7b186b2e247fd14e585e2ff3", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "7c4549d7b7d4114c94b6a409beac6e736edd50a63fa679ebcd8d8d43deb85d05", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "9a3491fa11f2ff31696fa502e54407735fc1caf80391c3a4ff0e8875827a2bad", version: "0.61.0"),
    Module("TomTomSDKMapDisplay", sha: "53ddc36cf05dba27e4d6abf78cd3461182f9538e2e37be1e6627b0e2f16e0cb4", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "a3179bbba0682af0e7e3f5f5dc7e7a7b5bcd9b1e460ca753eb73ca1c0b8636a2", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "9f8ed6f7658bd424ae25fe41c1aee195063c1343017fc73e6a5db3a895ed83c5", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "6a6c3aa403ff4ec1773c723f273a2d9bd0eb1c8ca30e76a7d4886ebc69cfec97", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "0cab3fa674ea05df35f67c8e203e6507960dc9f57600e5c759a53b4a0509ee38", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "a4a25eb45810a6ecbdcd01e1f72855b87b0c59eefd4295e0b8c09fbe286316c5", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "ad899745669afda8fdb296f3684a48d6ea3761883a32fa42a8b5155d1c745d12", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "af195a488c821f87929dbfa2e0138fce36d98caa1b02a415550d50e7fdb33a9c", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "0a91a00b03e931f30add4bc568c2d970cdc0720299adc3ba8c73b3838ef62087", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "f454e7b382b3d7d098e5268094ed4a4d9b25b5fe0c106d0639ef0abb847ced93", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "6832cb900639ad6f86a95356e83c6580e5bef2b10e994eab6d38d758ff723431", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "5dea01a0faeebac31c35a56c4ddcfbd15ed1d6df3db79d6c544b0eed4b4406f7", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "74e6001bd955205eca9c57a9f1b48e4d456479c6c33537aff4f3131a099c520f", version: "0.61.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "e7c142cd576b02a4546ae613c318b1490858eafc695d9093803a91e80706af1e", version: "0.61.0"),
    Module("TomTomSDKTraffic", sha: "a63bcf549caeb6f1c25ec0e054e86ba3e4e1825b4b6e3b13309f6ecc3f0f4292", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "aedb861d9f5284597ce480ddcde64daba947a347f4349c58789254cb9a9a101b", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "f8c4d30b152402e54ad5ce789634e7868f9d1673ca9a8a62d1e1758c70b95ef0", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "5554342ff2184e925465f7eaaca81ae345381c13370ea5ab89bf6ad776cef793", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "8c17d96be11c69e194d5a336ad4423155e8b7f8fb9fa2962a22c1172d727d777", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "f778751010e7715c4f6a6b96df8977177af00ca4e323e1b40ff0883e34c72216", version: "0.61.0"),
    Module("TomTomSDKRoutingVisualization", sha: "8552d766819ce1f5977bb5ff884472c198874d22f107c1e136c2c7645e8b1753", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "2c5f7c973ab657120fa5b0fea6065b0b2c296a0098273aa4ac17535d22b24796", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "24042a12d9b1e7f5350d93b5fa1709520ddc59003854e67d7c7fb550504a4d74", version: "0.61.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "1a3af47e855fedf34c3d2fe9ce8488abea7d7b2eacc2c2017bb8f753cfba6f84", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "c026ac7de752bcbf4f09873e725daae203c2e8c06399bd5c212a0f3927c197f0", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "63ac3e5efc23702449b3abd7f54159a8447790053e3cce977345c5c2bf580bcc", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "5a7aecc1a8c1c445692b673f445f0b8419c150f0d5b1eba16794d510cd8a27a6", version: "0.61.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "34c88d0c9d075fdb886e8e33ada5a9630b552e47f415f12bfeca44a2c3559964", version: "0.61.0", dependencies: [
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
