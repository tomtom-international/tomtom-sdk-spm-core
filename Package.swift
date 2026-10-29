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

let sdkVersion = "0.75.2"

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
    Module("TomTomSDKCommon", sha: "578569866e7ba76869700b742c15d82a1aac498229af108b8a72a04aa963e101", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKVisualizationCommon", sha: "3784da2bed4e9d8161cb4fec98f3acb2aab7e0ac0acdfe6843c6a1f962c80f70", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRoute", sha: "c534dddefe2a978f02ad2a481b8d4c934ddfa8f69d1cda6f9c3ae9550a96041b", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "a5da125df79b291477c5da17e86ab990d13a5dddf55b9d1fe08ea17928fd465a", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "8a125a92745475da03ca7f8401b528fee237a5c1b9122dec3a3140b71b683822", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "bd1c953704f821959b2ef6bdb78bd0bc8ab5391008493caafaf94d1c73a96b73", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "b19928b9d34cc13b9366fc520f2b4f929a81992995a4c6022da58506a6361b49", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "932fb4d509dbd1a05297d9a3fd78e61634121bab0435fb7434e7e8602207adb2", version: "0.75.2"),
    Module("TomTomSDKMapDisplay", sha: "8fb4e5d4292d46eb0835ae8daffc8b9f1243fa38c1dacc8cfb749f33a31dde21", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKMapTileStoreCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKMapTileStoreCommon", sha: "097872461f00138d47824406ac92e9bfd56272a8e0de7a83230f9c040b26ab2f", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "85b6fcd7617db848579af832e8b60bb885add4a6b2465cfc8a3ce527f193e08d", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "0ff258c3ef4f78399794225c7e72472f00c6e9f7aba1c0f8ef30de1aaa87869d", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKPersonalData", sha: "17103c1357ff764cdc40408e87a75e7be403ce4dfebe6dc2c5095fa13ac23827", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "4e7950ee53740a826ff65427c08a6583642ee745e45f16e64630fc1bb758eebe", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearch", sha: "8f296520b2a53ec600957c580cc8049b54fad140f1d75e680c2908c5c1c29268", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "2537f3633bbe99cb1be54bc6994b9d271a00c2c1be73ca8baebfd8fd11a68a63", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "db02de1d23d0d5d1ee50205555b4745ff4ab27ae97cc30964f9c1e9a55771c3a", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchUI", sha: "f3241f888a044a32fc01ce2354607c43906447a2754b8ce4c9ad38ea4ca5b14a", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "f176cf0a489a5b3fb294bfe535a4016cfb60089cc2f295a05b381cffb0dc5397", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "8dfef7eea398b2ce9ffc44e50abfde6162b0a50274ca543e85826cff19fb374f", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "007eb8126ba373daf804dc1c35aed78a819f3b9d721cab11c02fcf57a60de08f", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "b5c88dc5479994788e90d3ba14ff5f0c833f239214dedb80efcbbb9095d2a730", version: "0.75.2"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "f0587128b725c793dca47bbf8175216401c97bedc286caa67a12709a5ab65e09", version: "0.75.2"),
    Module("TomTomSDKTraffic", sha: "1381bae24bab94fd1d5ce50a0d3b0281f72ae3bc071ac8d4f13c51c1dcb40914", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "9276de28c518e197deb48c2b58ff688f1b34224d869b073f33b59e23ef001477", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "8c00f1d8b8c53756d820207afde8dcb870eba4dd329f3067e617b82bc75b81ec", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKVehicle", sha: "66794289b8a631cb9a74e0a7e6771ff893a6f39ba6ba08c575c275f91d71e1e2", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "ebe78b87a75dc56baf24f3822f4428c53f85d08f27d3b0f89055b43b5b03c1cb", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "ad1ce9083fab9c7bbb3255b345af6b95a51bda3e84b08a793812e31d83b9899d", version: "0.75.2"),
    Module("TomTomSDKRoutingVisualization", sha: "e43f1f9ef32ed5654f021bc7acc84d6260e2342f76d85b5dcbd85e25df10870c", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "db01beff127284add664afcc132cad98faf8eada5c505db1b702f64aa199239a", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "e9949892be73680c1fbeeebcc0a50c5543242c5f485b516a1e9994ef73ed7c34", version: "0.75.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "0427484196ab5c331379d858edbc5c5855cadb463c673574845ad731b94c53aa", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "f613ad266089731c44cff2d3ba2e91939255c5ff7dc40d00dcf4031809490206", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "49866181f0aa779bc62ce471d6ec49222cc3b4ef3f42163f32f4ee0e74e1db64", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "199ec28fc2dfb2604d9b6c4be1cbfe709eb9809b2482b0b100ff2f20dae68a50", version: "0.75.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "d6d748dbd548575cd6ee97a58741f704981b5f88755a97e29369aff7cde63491", version: "0.75.2", dependencies: [
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
