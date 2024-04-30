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

let sdkVersion = "0.46.0"

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
    Module("TomTomSDKCommon", sha: "a01c5ec639f4c7d3fe888f6799c50f1d346a14fa3f4b2e943f34b61661e8de48", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "58e553b010473fa587097ee064a2a33a4cb4e530fd32d1195fea95afbc85ec46", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "934dfbc6429d1982f632ac6c80c150d1ee19562dfcb6d63cccf2f61a85170c20", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "26e7d3f7ccc929250892b74db0e5c302e7abf9b35c50489d07d86f287c9c2ccd", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "337175fe2965bdaafbcf5e35bba57ba7f7ae713c000db96cf7b22271c35aa277", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "285420cbb9fe6c2ebb9790319d31863e8011a6bd0998d4dc068c227f0cfc9420", version: "0.46.0"),
    Module("TomTomSDKMapDisplay", sha: "663bc6c0e1ed2270ab4e17c0fe10c11fcf7ffc64e29e2745cecf72f866579abc", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "8b1dfcd848234da391a9a53730c3c29a72f79c2535ef9397dbb15c6e13b40758", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "9b12fffa8bf80a6701da703ad90e093bb4f17bcbf277358422ff3913cf01f427", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "59d61c175ad33d2ff26cf4afd3915b01105520774e39e487cbe64e5304f73e20", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "062e1dca8f096e63297f49ec6c0de6b4471ac5288501b543d358c44dcd8de948", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
    ]),
    Module("TomTomSDKSearch", sha: "0a09154ef10640bd35a2b30c4c3cc3e445b5a2802cbbf1c786205956ddcdf73a", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "fbfdb02e5b9b0b3b9ee83e75697ae9cdc7e631519ad6b083b1d5f121f0bb952d", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "a18912b2bca53a8e6d529e511a27c6de74a1063ca357e27039b7ae7b396bcb33", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "87c0d8f765749a6fd567eb5788d12a93ad3ffb98f70e1856f8e4dbdac2b6924f", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "4911f232957e2202376766a0e43a29acdcfb1d8325ba24e4969c3d3a5df22046", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "ee836d6603e9b99cf61b2ffa8b8685c5984708b5dd88e07d297f39d20b379627", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "e6293053747246a08db78c27d3e42ee69c766f0a9fef58362fb3de813dfa78ba", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "8b6c0bee62a371ee36781354086102a663a9cb4bd722def20eb5b9f92e4b3418", version: "0.46.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "dc62db85b2ecbaf60fc1f90ddad5e2d06bc7aaeebe80436acd30dfc1d25f7816", version: "0.46.0"),
    Module("TomTomSDKTraffic", sha: "6eaae71cd41e3c8f9dab65883969670af5ad6b2f4c8e82661cf74094274abdbc", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "6c9c6cad1d779283eb85cac3b1b97ea724f3d422f3f2f5bed88b5df8443a49b3", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "625566a7d659c394de48a3ca1de2b81878871b38c1e997906cac0e7e9b606c3f", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "e895fac993e1b94352fd5d9e53ae6957df3acb26f23596b3c1e8d901becef36a", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "a84cc1088a06a7f3209d84320d13647a4de64f7a6446fba5f265e44d9083d151", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "119d567db424c590b6da2061c5a3581ca18163a4356e89aaf3269992a2520b40", version: "0.46.0"),
    Module("TomTomSDKRoutingVisualization", sha: "030de672799dcb961c0b1b3e26e959caa5bb8cdb5fa6ba2572865561afaeae71", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "a89fdd8af53abfc657cb5a50ed22cde7b595a10b601c99572ab2b3e9f82d68fc", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "d3dfbd062e2fa4d6839c8d942f616859fd95c2e7ddda1cafce7146f5178a12d6", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "93ead5ca76bc744a86762643e953f4a3611e883aa6a4e5bd9d3734f0fa7450e2", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "661d42369e22e1b7ff9e3f6e56a9a8de4d7697f6352d075ca8f89e92661bdd2a", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "3ed30823e2b0460a0ad4dfea274232d5b075a5a7845a190586fbd111c89227be", version: "0.46.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "f97732a2584b2ab25cdf756580865a6cb3661ac024268a04be1e92c8638153d7", version: "0.46.0", dependencies: [
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
