// swift-tools-version: 5.6

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.2.3136"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "b50709d3c8987c1ed74573f4b4d43dc2c2041e68313990ed2a42493e69358614", version: "0.2.3136"),
    Module("TomTomSDKRoute", sha: "b9970a5892b42799317fc860d02f5bf6023ece3354a498d978d48a5b89473dbc", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "1df58363aca4da3a9f54b24f25f166a1a8ee78a3b52d1c87119b5da39a33aa7d", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKNetworking", sha: "37a6a463d0a6f98cbe53f5af1ee21e8caed4be2cc964c7d27e074c06f228cfc6", version: "0.2.3136", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKLocationProvider", sha: "f9a3e9c954e9d1386fa571031d10dee477e2783184d3146dac6d077757b749b0", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "eba942fec1a4f46c3f2d09e27e9deb00d9268a476f590181bc689810e98b10f5", version: "0.2.3136", isProduct: false),
    Module("TomTomSDKMapDisplay", sha: "8c29496e89c510794a5a059acc3b17b9fede5499dcb1b57657e2bade9e27bd56", version: "0.2.3136", dependencies: [
        "TomTomSDKBindingFrameworkLoggingInternal",
        "TomTomSDKBindingMapDisplayEngineInternal",
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKNetworking",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKRoutePlanner", sha: "0a85c6eda245056bd669e4df9a3124e8f3b128a8f9869dd496c821e9097e25cf", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "6672244d994789b9ff4b06c2a9478c69cf4339259c52c51e8ac0bf9992eeacf9", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoutePlanner",
        "TomTomSDKRoute",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKSearch", sha: "e7e8b288b90ca0818eace10fd88b361616d647563fde96abe90dc010488c0d3a", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKSearchOnline", sha: "2db4f363ee66f8d93f656b9a260ec0e6dc6e5dab8cc925f59205290a6ea95e80", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "67c480d21f989c781469a3f176b8f91982a3c7434064a5875b978d8b98d4eea7", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKCommonUI", sha: "c00122f9d840f313069f6cc7b44dd1382d61836fa4d59c76ddf22efe83d11c70", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "f87c3ea4a4525c8f0d790de92edbe0090c2caa51b4b957a7e9f27061433cdede", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "b49516524454ec714f66aca3cdae7faf9eca3fabef4e0f5218b4957911b99a52", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "5980087526c255188aaf7af8e1772573834026797ef4630295a73d4d1f84b929", version: "0.2.3136"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "e4c06959e5103856297346e0a302f4354304b81774c8e4a0c07f6749a6dbdf04", version: "0.2.3136"),
    Module("TomTomSDKTraffic", sha: "b44222d66b70d7f43459570deb755e82ee976b87f64ae409ca5539f3f2745c67", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKDynamicData", sha: "9c67e241f98422c1f3998bc05202e660c18a12e3e253f54cd0f6bd3c2535f6a7", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "a255e6fa45c288c9f914f8c318d75bf6700b0a9f648d2c112a7a13ecc3f1256a", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
    ]),
    Module("TomTomSDKStructuredSearch", sha: "82cee2cab58c00f5f8b3ce49c810abc10c30374aa3ea4819cf770176c3547d26", version: "0.2.3136", dependencies: [
        "TomTomSDKCommon",
    ]),
]

let package = Package(
    name: "TomTomSDKCore",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: modules.products,
    dependencies: [],
    targets: modules.targets,
    swiftLanguageVersions: [.v5]
)

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

    static func packageDependency(_ name: String, package: String) -> ModuleDependency {
        return ModuleDependency(name: name, package: package)
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
