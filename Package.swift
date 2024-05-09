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

let sdkVersion = "0.47.0"

let package = Package(
    name: "TomTomSDKCoreFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [ /* products are set later */ ],
    dependencies: [],
    targets: [ /* targets are set later */ ],
    swiftLanguageVersions: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "17434c38f087cd2dbd127586610d0844d6f76f78d329aeacf07f3c7993878a44", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "f2c40e5b060378fb6a2a9e9d88319ce65a1202c4e8da8afa95a8611e8dbe7e1a", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "a1b9db4e990c80d7d2a71870a2ac4b4186d50be58fca89610ee03785b2c7ca1c", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "f80b4c94d449cad1a17c4597d9f1af180595efe6f282bcb70cc49ff46c270bce", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "00e05a824e4c401819dd3cd19d6084477992788af69f629637ce94c4760cce36", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "b204d15188cfc73a8c009e7d567d52a0c88f5186537cc9686ccb2ee524fe649f", version: "0.47.0"),
    Module("TomTomSDKMapDisplay", sha: "14f5a1659fea343cb994240c279ab5d90f00ed7a8e871af3a27120be808156fc", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "2e1b7c00e84fd2a85a5c7bb98f31c6cace6b3311e57eff230b560a9382c863a8", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "6c1503573338bd2a372fc2c63de157a92e618ad5ef2da3868a363690472cfa46", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "b0c7317cfab1202e813d347740ec8e789c0ab18d81b9b6d92caeaea44b5f177d", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "d164ac375fe592bb33d296b04a21105058eb42a1cc64161fe05dce3f77feb09d", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
    ]),
    Module("TomTomSDKSearch", sha: "c264515510d679dab45178dc7c2d9b9032f5a736e3c29b97e6bdfd61b7758742", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "0e811069ae9f8835d97529196d3bbf49ef17fd9d51d5d1e29c4cdf026f16588f", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "36b34693f8d9374483c9071f34d8f4d3a9c763d7ff64057c96b9279df7c95f00", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "7c3f64e2dc52cd3b9c3241ab57a144bf133775e421a09bf4cfb7682747b3d511", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "97383979d9209c41ed70481b670f8618071dc33f10e7f3e170ad70c8f0e8232c", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "397d308c26f25cfca5d19a9f5bd3627ec7f960ef108d519d4a5f803c8f490fb6", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "c681d1608a482a71735098fff89c179aecdb1a3033ae86794df14b28eeb34205", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "032f0f067f55437d2d799f24c54b0f3dac024fdab4a54ffae3e32e8c0a4ce3ab", version: "0.47.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "471752102258d3155c2c173a3c060617f2024782f9dd17f826c756482dd6e62e", version: "0.47.0"),
    Module("TomTomSDKTraffic", sha: "92f3b11b33d4f9dc5a0d7451b96ab957796be5f38bdaa391049b77ba64686d01", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "63a9e9c3d30586bb1cedc76f96a54382d7a62265005feb3524a96d05c0b5cb91", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "4765e6f2731f2007ef4ab3cff75203c806a5b59ed135bb369da5761b6363fe92", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "3000538d147cfaf2452a8916ca3887f1026b2609ea8bb47c3845cf9e3f1090f9", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "57e28614125a325a91b6d21dc7b6bfb7c28fe472dcb465c46423f2673e774af6", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "eda8f6ee2c98bfa335216dcf2ecb6da0f2cb934dd20eff2b65b31adfb638bc5a", version: "0.47.0"),
    Module("TomTomSDKRoutingVisualization", sha: "e1f21655491e3e8112c10a2638cf226a6ee4d3e1a22db60303cc3d06c6617ebe", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "4c8a84405bccbd9f6c6cd80ac8fc46a0284b6ef33fdc1801684b4457b88aa6ae", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "b6fde0f0c20f32ba6eae31aabea840a6a6db63ae6e12768c8872e057de7d0ee8", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "fa62f98dc5eadc76e9e677fb017bd5e42e1e414b41dd5059384f0380c76992f2", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "a9c35c947276b7f3325715139a6da74d3458d4b8789642d2047ac3d4957c557a", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "a5555810d2158a6cd1c0d12d43533b11c6d579a4c84a9b6a34da69bb47e9eeb7", version: "0.47.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "ed5894f6d19fce94a822f54a101bcd7fa48c744ad15a5011205d15227e9627f2", version: "0.47.0", dependencies: [
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
