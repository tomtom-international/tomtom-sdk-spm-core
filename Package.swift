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

let sdkVersion = "0.63.0"

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
    Module("TomTomSDKCommon", sha: "4bc78165821826f69bc8ebbbe4b951e9f0c923125c2c937dc01b47e4eba08c84", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "f97a7904409c8c87250f13d7744e12382348ddf83461e395526c0349a847e29f", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "3f71f4b77499a8dbb5540cfec074921e21fcca15526cb9cc15e7ef67f4f751cc", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "13a6ef1f21d8ed4b5d7922a536dc3ea98b3e48f8cee483adefabd4ed55ba363e", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "756eccc7530fe65806780878eadfde28865686e68ec0a57cddbb76c8b261afe9", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "3b09a52f54eb123c2b6e14a03e15e4672e931c944f02c84ff1af3e4c7a7228b6", version: "0.63.0"),
    Module("TomTomSDKMapDisplay", sha: "79288d4792df50268b0b34b700eb0ae6230f04e8102686a9ac486092cd7c5e91", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "ba11b62bc28bc8c5d899835bfa3a6e2dadcf542ad326511d5e5c0e9c1b51a315", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "18fe3169bfd47605c3130c8d164dc28dfb44ae2e0e8ea98ea55b87e53f807892", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "8a9d9a9dcb9028de0d633139512a8c32390549624d3ab266c0900cb878621ce7", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "7a6bde5d92bae7a44e785a896e455d39450a12961ec081bf2259d79eefda2be1", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "22f2d9ae3cd542f62bb878445a64c917b402e9152a2413f91bc530c8f844ee3c", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "a7b76f159ffc8fa05632949ff794580730c3bc9d2579027a517f63ae228cedce", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "80b8a9572839864dad9abf0189c53fd66bae3a796df910a88658d93c88cac15d", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "0a09b339b742a8fa34ca89b5f9a3177a5a3de8ebb11b1a657ff3277c8091f5a3", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "2ed6b969b4eed8a71fb02f996f0664dca49e92dcf2f7ea68cc32646a2adb8144", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "7f8aabfacc6f762b794cc576e6095120d430b1b34b2c1a23feb4cf815db8eff5", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "6a8082510f1899585a05f6102474cd7f6a83e6f8c9aa768cad4d62adfc274e86", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "9845629ed4cb0a6a5cd805c984858e19d7271e5fae8f55e59a1e88d577e79a40", version: "0.63.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "f36daf13bc5f69f04d746c876cf8b9586d3ca2e1a08075ac8ddf776c1bafbfa3", version: "0.63.0"),
    Module("TomTomSDKTraffic", sha: "df6743fec3b36a2d1600ad67c9834495e4c83fbb0d2cda226edc938f57eff4ea", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "b5926631ed3b572e53bac03c1b1edee258eccaa4e37b93a41bbc000d2833288a", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "146c224d2a4ccd71c64c760c6246d0bb531f1ffbbe8d9617e6b4cbe85f215246", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "43963fda3532f540bbdc08e50d25f9a53568aaaad1689aca8bea7c35c1660d21", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "ee4bcfe3791441a22ed61a4f4de38db6f771eea64220d5e140b10d7c5cd81c60", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "c136bcd5b38a09817440e0240db189b90d082cc1fdd9341f8514b6532e2a053d", version: "0.63.0"),
    Module("TomTomSDKRoutingVisualization", sha: "cf5fd5ac19bbd1c026317f5604ec57915efc15055d809ec7db4e95385ba036e6", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "4072e11f7ef709b0fdcaba9562dc654dd3d0ff12fdaf451dc17ba82f8527fd15", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "31e85f6d315d5297556694c20dd256ff54374c29703db6c5c858d899f564dfd3", version: "0.63.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "38ddaa0ef374f1b5a3db294ff3357baad90c1ff4865d5513b4cc00b4d22fa792", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "5eb24081fd0b26ab0966d3b1b6fde4bc90c131c9df7fb31e5d1df31206e1ddd6", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "dca50a4f14bb1935808684d00fcde8bfcc7f94a9b312ffd1c202676c1ca646b1", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "2bb64529413c9ce5f0945d01c38c2848ac61e8894096ac0e2e2d2906186bc253", version: "0.63.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "6bd372c1637f8e84ee8fdd19141c203fbe83ef04ab2a65d6c349fe6b6de01a91", version: "0.63.0", dependencies: [
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
