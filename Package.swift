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

let sdkVersion = "0.54.0"

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
    Module("TomTomSDKCommon", sha: "8a60c9333b0ad27684da66f736f3c9f277c17fbd0088d73d04083692407c2c24", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "00f2f92aaa05f1b2801ad47e42fc2a2fdf9f74a6787ac0ceead2ad5970e0338f", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "34210fc4e50ecddd269c7bf4ca315d5f6882d06b89ebc86dbc478312eb8fa51a", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "b2bfdfd0269d10c3b2720e5ded76585d51f428903105f667051f1582981ccf98", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "dc8b65fb485fd3cbaebff04a9f23cb27b6d27e8266feba9deb41f4d6bdacdfa5", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "75c6cb478e2bd6748c8648362db493ed0df69e35f8ecc723464010fcc04e7a8f", version: "0.54.0"),
    Module("TomTomSDKMapDisplay", sha: "f78a184522bc1ce5da5c9ed7f1c9dc666469878dfd61b47faaaf1cb74ea76ff3", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "af0812aafe1d79f5af523de6fd6d44211d60fe40cc4b2518a3e6eafc874de515", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "412182427bcc2a65fcda0c3aeec55eaeace150d0ec43f4c4e381ae03a7cbfcf2", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "732418b523d66f06fed5742af7bb164ab63370f37fa7294e144312881796b704", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "1b78e1ec3123bc68181bb3b593a727913012b49ddc334060c15c3d5d689252b1", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "2f912442beabf0e3e3e5f9fe1f4c8f0cd8fe73dac541f67113f57a5a054b4913", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "8b45be78d71556bb8d26e3b1b49709a5d84e6fe34dde7aa133fb25bdad5dbf2f", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "53b2b91a2a40b764db1658cc0ff44280fe26ea942e2b4e2f67e648f4daea1d64", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "fe9540d9ff68ea1f1132380497ffe4e8a4b9777ba78b4f6d2d53388e03ea01fd", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "1a2fea76ff9360810e1d14dbac7ad8a724bca611638ea9482beafbfb8ddeae5b", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "f28edb5a759e216bfbba503742f43b8f051cd984ff818aeda56b1932319a8325", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "05c9bc8bcb96bd333eaa4f7557d2968b560e90375a897f08e225e997d7eb7e74", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "5c8449d92b79bd4c4af0c6b6cca66bd50a3fde39f0a8eb726ad353f0e2abfdba", version: "0.54.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "31f3f30eb814d552e0a0f446068514b49b16c1339668f879d2877d99f2553a72", version: "0.54.0"),
    Module("TomTomSDKTraffic", sha: "b77dd9a25e3f9f6468fa8387abf3a4887cecb7bf37728280e86060f68bef364b", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "fbc8c24b9464ad3339760ae2e631f1084a4edd998cab68d7cffc735b0738da33", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "839671d0775b1e8c65a4f6dc6c1f1c6d39f26929e63502eb3d6604e1437060f8", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "1fdf5d9d8c72775e64194db5dc99b67d8f30712055d04c2cbab08a9965833c12", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "b2780dcf8418f11fc47ea25ff247179571329ec2dca06bd80e7cf8c9e9f9e835", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "d0553834a253b100874dcee957fca2a0fc78ef531c975cd048bb6992292621fd", version: "0.54.0"),
    Module("TomTomSDKRoutingVisualization", sha: "623b0d5b0a25b43bf1200bceb634f4a92ad1775f721946a8df227e2f241b695f", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "0a906611220c68abd36551729d0e14f06588e329ebef25c1a4795cf55c282921", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKMQTT", sha: "cd8825990cc512342892f59624b04348c65cc1808de92d74687d22f0ec2bdb30", version: "0.54.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "76bf65287781f9b0cd74cd62ef0855631ebc53e93131a0b2e2e2b950e2c4d493", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "a2a90784f8860696680be910ab28e7a68d324376a602f7077d5a9c6d1a33fc47", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "a05e0bb602342480373ff273c322cd3d28d1a15aec07aee7fb08b95515934c33", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "8aeb0c28694d14021cb1ac76332bc061f6ca5892470f5183b057da7447665e23", version: "0.54.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "c8548b9c6c63bb009f1cee41ff46d2e53f7397138f222cc2f9ee6205aef41d15", version: "0.54.0", dependencies: [
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
