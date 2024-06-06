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

let sdkVersion = "0.50.0"

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
    Module("TomTomSDKCommon", sha: "38f2af94f53dfeb8bc1037522b331bf5c646bb0b518e7c44ef18edad262c9af9", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "c554bda690de293e6a411ee429bb37ec2b29f4f43ae97740d24fb177a39eb7bb", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "99dfabd9d96539b29c6ff9f6c664fa8880aa2c45831de9351f1f723d5c1964a9", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "2690dca83142cf8f2c4f9710c5fdfc3437fb02d9f331b610b2f8f5038725f2b0", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "72ec9817b7f3bf10e24776f10a55c8837282c72ad453fac74c8b95e5ce09ef67", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "8a32ba0fdc49fe0e09a1be9608bb27df27c99a4dfa53571ea7546f933a2423b7", version: "0.50.0"),
    Module("TomTomSDKMapDisplay", sha: "bfad036e5d36e88eb06769009aac805d9a1edc05af0ba5dedca8f0c8da79d9ef", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "5d6b132ab58317d0ace256bbb2adc4cd663d9666311bb2e8ed143bfd4cf6e969", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "3d1ba4e8814bcc91295ebc039b3d50a9ca64893f520528f921c1e8f2901e9393", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "4cf54741d879cdfef466c13f0a6ff7ca2ce951068489af3402ee0630f6e196db", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "281379a89c897eaa19dcb4a0d0a3da1352f59ccb79decef92aa62bac73177e55", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "e41fb52d402768e28c8296bcf0ee2d616c69114374e0933b7b9058a05a397307", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "b2e695f255f3b4746be353a71d7681fae98fa506df7dad199ec4a3182e8b5cab", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "67229f99afd8e395f2c6847c7b4c7e4a6f20d308f647d26a3196ed732b33e870", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "4aab3b39f1f7a9df27df4d4b4ec234d6e20bc8dfd4af1c7ce0870c023b6a3291", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "a34c4da6bf7130aaddd4b183bd4240ca96a79cf98016affdd3d7c3f6f4293766", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "32aff72ef2856d07939fcff341412587c54f0ca1ff2f62d245f9df48bc4206a5", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "4a836c678c054483472e80988bcdc99aa30b0f9fe7af8896d3619e09ca58f35f", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "aef8554210d4c71621f952ffe56a510b5b0b813420b92dcc078bde4b254cbf34", version: "0.50.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "8bc62e99e4eaded23c777738b907842b620339c814089c902c23dfe09f3ab278", version: "0.50.0"),
    Module("TomTomSDKTraffic", sha: "878ae251d7b6116abce4e7b834f7a879413228ebd7190fa6d5a88116624fa329", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "6be5f3a2bf001c374f8b0974e61f6c929f38673e9f1ff81b435c710d80bb2ee4", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "e5ad6ec19747243762ecdcc79cec980f5220213ada3a246e60514c45442f0bb3", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "29e4cebb059b8e3f97321067317ee3676d6a17e7973ed7ffb2c9c5e09e7e1da3", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "da401b6381ac9de62e1afe0dbfb10cef7ba3f7ed854603849060566e30c7aef1", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "13131352c3c245c506b894373796d769b2d1e2e21b22e8923a2bdef20ec58d8c", version: "0.50.0"),
    Module("TomTomSDKRoutingVisualization", sha: "e7fcf9b10b49632eca155974f9c60c941ab5d75984dda07d147a86908e24e3e2", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "371e98557cc2986d0b85eb596e941b04cdf130d9bcf20b5549d5b43203d2309f", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKMQTT", sha: "f3ac9b597b1ac0fececdd4c0a86ef766370f286a024076f6fe2dbccaadf421a1", version: "0.50.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "ba60d2a1e7f2e553c4b7b0293809330b2f3363273b48983544b2f196635985a9", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "f35196ee95c5c13336707e22a919769f6b6aeed163f0bdabcd3e602163007a86", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "3b6f1f17c57cff15ab85f956a286d02afb27574a69368a833287a196b700284c", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "fd96924b132d075bb333a0c7c7165a9d4fc1279eb7918087d85293a5c3c09d42", version: "0.50.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "bd380e9680946f69b67de0f8058c0501a7d70c305213ad76c487d95358d804fe", version: "0.50.0", dependencies: [
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
