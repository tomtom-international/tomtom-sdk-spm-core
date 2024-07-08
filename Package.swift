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

let sdkVersion = "0.53.1"

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
    Module("TomTomSDKCommon", sha: "bd027bddca1324b5627372a0fa16b07219b1dfbc6e4e8d1f0d7791ba8d7eeba5", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "9227da7f238309a318a6df9a506db105d9d467731328efff7a55e8c35a2f290c", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "0a9adefa6b8c24e349984d1a6a2ba7d8891d6760e79c5114a2475888959cfd90", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "be3ab1ea3af72855b9a0d03ce9fc99475d77dd9db15275fc708868e02a8b8b4f", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "eccfa8d0b3b7652fd3d9209df6f2b79d2d3787ac4360607da239b27b3b87ac4b", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "25206ee9f25d9d049f533551056d9fa83106568eee4033906d3348cfc72c74e7", version: "0.53.1"),
    Module("TomTomSDKMapDisplay", sha: "46d1130a6bbada483c6a5f2ecf560c3fb0a20d45632cdbd55a1d4a3fc8b8ad19", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "611c19e756c343faf41a353c55505c35646041d7ee8754519e71ce1dce6616e5", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "d8510197de93f7bdca7b6323fc43e9fd4f77c00b03453ff8c7ef53df0d8a2fc3", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "c79a89e6690597fdf12260a2ff08a81a4869f7abd258cfe5bb252af574feb242", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "ec0e7f6a0554b475e581da4c30b360f2657f88b0a48c580fdd589be089b14b3e", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "dd2d83dc427d341bdc2418903cbb379bbe24a608a830c2c5af304a18239739db", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "7621c9886c7f438e865b474bc6a8e3f568bbfbea39434088eee00298f70d4613", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "b42febb2d2387f03c1de31237497126f3f01c784e4fde8393f2ecd38131c85a5", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "6f02db8a8eede800ebd707407a5331fdc147c6aeecb0524a0fe9341f2cda4c62", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "85d37093ae8d84f262b0fe13b89861d530a9def059a017510e4e27303d3308cc", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "dd9e8daa0705d1ecbc9f18303a6bc0bbfa8a271281b530414fa789817c2b9ab6", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "73be494311e77ba36986dca57fa836e94dd1ed8d8c51d0883511d3ad237d895c", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "a3dc4604d55dd1deeb4d7368897257c1fed9aa9dd202c59a3cb7ec1c1d11e3c1", version: "0.53.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "cdcda26ab413215ae0769a5a8477d1397cbcf1509a60fe32280dfa58153db6ab", version: "0.53.1"),
    Module("TomTomSDKTraffic", sha: "9b8a2c68a52383ab50a71ea05c3ab3d0fe3ee5e12df77440709ee407b7f66787", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "9dddbaba37cfed4caacb91e232f659f821007437086a804fac545579602e2a9e", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "fe2b1110cc3afbb9c0bd79ebd53d02ddedd81db7acd573d4b6ef1233cf81cb77", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "b92d8a00abb8d75eecc1eba8ccd01a0a5bdffbfaa88134bc74c58ee5c9a83032", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "7b5f45841aff5b14b05c4e74d165bc90dee37f152e214e5fc6060df6f01fe1a4", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "1d3aa6b829494082dc4ab889b92904d4ab09b69a88d38e1ab8ca7e9ffeba905c", version: "0.53.1"),
    Module("TomTomSDKRoutingVisualization", sha: "c46cb93a3f4129c02c117ce60c46b0a0f8cbc912fae1f9d59a98c181fdefaf56", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "d9cf976841a7d5978079c50bd13fdf8721d65a6f31bcd3e6c8dbacac7107f831", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKMQTT", sha: "09bd8ef138eddeb941763153e724ac4caed61af35c0c6cf628b738e6cac36ed5", version: "0.53.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "b547760fa315de562cb8810f1c802481cf5083e7f779cfdafdd0805e18194418", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "46a18c065b907ed7ed6526c8a264528f5b577e37347cde05ae3e58ee615d643d", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "7f4ca7cd505f48d0e35f66e42ae8051d1d65c1dc11cb2f203714b6518be7cabe", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "3ec068ae7219602bb193f1e794da19c12e236f24856416f907d64824f23ad32d", version: "0.53.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "10ec366b277d6621b866adf4cea49ab17f7d7889f5cdafc85ec9478914cde4b7", version: "0.53.1", dependencies: [
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
