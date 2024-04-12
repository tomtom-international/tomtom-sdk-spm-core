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

let sdkVersion = "0.45.0"

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
    Module("TomTomSDKCommon", sha: "2d81c0fcd6408d97825fa5c56952d094425ccc6d5fcade7242715a8aef35ff59", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "855ca149b166aa842087001178824d0d2ba6b39d4820a270f40e4dd50d97e0c6", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "c127c2a2f90c8b9c50b0863d215e6067a1f859f7e0a370bdb6c7923c75dbd45b", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "715cfae38e3c35e1c2712889a2662e5b6db6b0b11a7aaf6f4be094861e2cea79", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "1adff9525b0edc741bfa7cef28ce6c1bafd63ea1a89708b9621f6fedfd03f385", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "c35b86cc201dfbf451b5b34c7ad061b6dc7b7dc161b3c88b856595eb8e528da6", version: "0.45.0"),
    Module("TomTomSDKMapDisplay", sha: "047168485b3d1ae9d0f5af2084b394c996d540177f2535aba56d6a750ab6e767", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "49710e65e199bb54bea39c92f90fb198357c9a646169c5f7d072c20caa287cc5", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "e57bb5928bc6da5b2c6b1de6550aef57e4668090f750985160b742cd3297ad60", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "8d2e460475bff04b3062f3664088e843d7595bacae316f3cee53ddc6e74b84d7", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "2e03c2ccc176b1f1cd5a35fc166ee7f71916aca13e522aafe1a83980954a3713", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "2fe85fe3a23c85eb548b84ff6f976beedf5c7d8ede30e894e0de667dc82cf51e", version: "0.45.0"),
    Module("TomTomSDKSearchOnline", sha: "ef509f757b9f82aaaf78ad9d51ddc20ba6a95817fec3a90a79efbb1b23753b47", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "79ab46cb9681f9bf622f75a055f5e0c674f7196e9f378e2391284517cd0f7d0f", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "fd96d112928fc4c89f613bf36618b078b579194d2171145a2a8eb7a56911a42f", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "96d7715834de30c2c255344ef5436ab41df39e1b313e8bb105a4bc8fcef681fa", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "f886a6fb2c89a26e5a55602a76900edff0320c13e19faa949eb4b7ec60d627e2", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "ac392af0590e21f96e29de6d2b1e77ecd5cafa1b904f9c1b80fc13839cbd922f", version: "0.45.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "e0221a5a184af6d18aa3879c34830655ed27f0d3fb7ab7c8ae2f63c23d1272c6", version: "0.45.0"),
    Module("TomTomSDKTraffic", sha: "0abddc5a234c2ee7fa153a65516885a336b0b7e8fd95b6396a95e9705f463ea2", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "68fb87af88f93d409d6050dd84da577436a13bddee63f456a2a50f3a80fcf766", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "f896bfb3938ac883a04a207d25c88d061af8fe7416503d62517b22ae9a681b91", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "08607a97bbc5dd29ff4a3e5f3e9942c8ad28704e5011c99381f8f3130945daed", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "1ed92f93a401e47b237cd78e845552babd969d96b8a2bcddbb1376fc82d4fbab", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "bb65fc9aad26f1a59d2520afa97de193f166aa59b3eec8ee76f46c97fc9ede53", version: "0.45.0"),
    Module("TomTomSDKRoutingVisualization", sha: "725a31046135e090c6460ada53f10352559117a38873d52be81e283a51863294", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "58fc70ada494c8a0cf3ed3ff62f073dd8b8fdaab11186162af318966d19704d7", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "e35f1853f12c0dbc0c191640ca7d975671b4ac0f531dec46fb1b785c6b82363a", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "210b71ae8323c97ed7469b589e06591da868dd7c0c1e0bbac8e6eae4c4a305e4", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "d8b7cf5a810d856e74537d7e9d92664f66953144d0260b9b8b0455a741aebe47", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "50a2f4a560112442f0c799e67c9f53db0d3d7d40e0f0980caba783117341c43e", version: "0.45.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "6297aeef0f855db1ec0c365ea662fc09a67c52bae494f1923382a557846846f5", version: "0.45.0", dependencies: [
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
