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

let sdkVersion = "0.42.1"

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
    Module("TomTomSDKCommon", sha: "bf78a171dcbfe648b871eb9240d11b3aa38536ab5f98539d61774b27cad7181c", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "6889fd6fd6b6a36ae752cbace55381d2510a2a0ab7a1abf359232c42ecbc24c1", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "b5edc87d82cc38095a2e425c7a27db54135c202acd13663bd14a7e382f4c2c65", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "c669610d0c261e0ed80cba8f6c315c9e7ca42f3c59a700171c1b2a7425f47d93", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "7a4434a3b975648cc92634058c4707fc348771e1106145c2da1e4d6f62e93363", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "8034e5b4b46da8507aa396b708fc8f5c99d5b5acca762047ae2e5222d60e0aa8", version: "0.42.1"),
    Module("TomTomSDKMapDisplay", sha: "30f69edc4a3fea1ebfe595ee6734ed8265c3b20bfc99aa180b63774c46d783c5", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "b766ca8349c2e494db9fb5e17636be392d5950a8f8d011125a87dece934330d9", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "0c6120ffada9b423e8c70e3d986c4b94c5302d178978eed917331caefb9e7e9a", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "816364520e826d70e44fcdb5859d1500265be92836aa844523e81f58d31a630c", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "22f1b25606fe8372907ea667f57ebc169126804e48d75cb11a5a0ed5e6a614db", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "1bfdf52b4d22a74a483a7136e63cdc07fb3bea753e891538a8a5102667780e7c", version: "0.42.1"),
    Module("TomTomSDKSearchOnline", sha: "478d302bf2352d84481a1dc31c2338456e21207606ced099182cfe14e3008956", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "5642e5570bc2e718c537f39022d4002b1ecc25fcb37925637924f2cb47320a73", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "1925ae36564ba5266be9bf0df5ea7ca2349eac96a604ac9855d03503b1f564be", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "b32e7656ec8a44084b249967694aaf89502e876220116f0ba7258c6b8c86dfb2", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "6f09baf39365de27c2b30dbb156b4c7b2bd528bcf5e01a31191991136e20d93e", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "848fa7d08515e7f254a6120f97b0db8d61e8582801f889576ef65d5a404fa275", version: "0.42.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "f03dc2d27375d03c9f1d4452d75702f7ada03850f637a78502e60bd108a4a666", version: "0.42.1"),
    Module("TomTomSDKTraffic", sha: "993eb07b9217eb92031fac868a69826546ba2aba820e987c071da6e68204a996", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "fdb17e409622142cdcdc6b994743f6144c1ba71ea64f457b32139a11790e1cae", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "6130d9b771ea3ecbc86b101721e6929d03f8126f747ffa06eaf8bd3c8f62f6e5", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "e4cc6f8e05a93759c5c6d80f7e2ac7898d1a0ef8071e6cedf49129a2dac51ced", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "e2df27f73fda6a14de4fcd81a4b3f231a89af460fb7f8c4983727790a0dcec13", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "1ef1ac3a9282420af8e7def278924ab3d510056af2d5d3f56368877482b994bb", version: "0.42.1"),
    Module("TomTomSDKRoutingVisualization", sha: "e18f918ada935b7b699434720b6c0e07afb2132d24c4c8082b194641961fdb96", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "e627aebaf762e1eac87eb5dc079c9be40b2901dc5dbd3f1261d1f3abbfad7480", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "c222b50ae1fc326a00b14b1a812c13b6ae8e575b0be8485d58deb700755cbf54", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "789883d5b971ff0460c772e994a3fe81700b2d87f8f76510758630f3812a422c", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "41ea92a8f6f4a92b40a4188339778c54109675b21a881e5b8656a69c5ff069fb", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "03192fba3bdd53b291f8c157f84b4f0dce4479b4c24a6fc2facb7f6c0e42c595", version: "0.42.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "a568b42804cab36b570892474a23d40454cbd3d086fbb00bc5c037eeb4f83189", version: "0.42.1", dependencies: [
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
