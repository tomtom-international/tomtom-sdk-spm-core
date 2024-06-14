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

let sdkVersion = "0.51.1"

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
    Module("TomTomSDKCommon", sha: "2d2d6dbdf84b717962c284eab4ff16e6f54a6cbb4aa975a23473c722abcb9c39", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "ae385c3377568031baeb4fd3b6a5a78b12e18ba23dbb20894226b50f41d26118", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "8044ea2f81a334a2e076f50201c47f2b274eb041e9d63cffcc2120468a630b44", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "3874c5e376ff836af4abe450fb900c4e723a82deff4cce6542087fe46f66d298", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "e19fb7e89644ffeca854c1a8b881e1caffa9df37f4b732c959438db84b223e57", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "93ae123878313b4f0329df89afb2cb3400fa08c4a7fc626aee59bbf396931462", version: "0.51.1"),
    Module("TomTomSDKMapDisplay", sha: "c4a980c911f4b71531a7660d13388a242fd4a66d62771d9c67e9351bdbf8eda5", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "a15c4d7bfba96385b24102a3cb1c12c528290caf886dbd4bbb7cceaf9c45c16c", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "55b5b31e30502d524a8542768c59e80f3bf90dde98ded1aff484e3d99695de8b", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "fc9d897c96e2f40a702b439e2f06a992a6172e70f5ee956adebd7d4139714923", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "55d65329bed2d7c4eb7289af9881b573624dae3b6bb050d18407fdf4592d0454", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "4d5dd0e5ea8ce76ee6da94010320907ae45de5702f34bcc8583fe28f85e89394", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "3b818043d9476a4416df7f46dd6d53e597addec2a4ad29f88ed5d259e6bedef0", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "cfc95dbea32cfd394556204409456811d106a394634955eb4c63d14a636bdd8c", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "1eb87b6e064c45eef076789d9b5c813b204c6cb30cbee9ba648c965c0308cbfc", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "28972335a15c035a0b31e122d8a437d746bfc6af29e8505851ca639bc89fad07", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "b628ee35f3a6d92f308559d35314724ac5d1b1438969a1522ab396c519b4c2e8", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "e948e800550cec0f97fb4f0b3c05ee42fb1fc5d64b07ca571fdebd09cda92b04", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "08c0a07346b8c5f941ed299785f53c80a7cc012a5ada6b1b18ccfc9c7a23feb1", version: "0.51.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "42c7250836fb8f6c288de671fbcf74785ce7f0c09b047f5bd27a25ac746af540", version: "0.51.1"),
    Module("TomTomSDKTraffic", sha: "064ce587d7ecc5ad1f4c1e695fb3a3c59a726bf0d12b66a99c5e115ff0acb29d", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "d53ffc3427d5fc45344fd9cf7b8a45ebd0c98907a63566639fcb875c38d1609b", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "9512b835160501199458021fe0cf174c93cdbcc51cdca0482f89ad56dee231d6", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "87498d49bbf35fc305ef4bd4a36589786c65714ed7f5a2ca0d3ad271fcacffd6", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "1f7e50dbe81c576c932b8402c821aaa06fa3c8aae59aba3e1aaa05408dcf3e93", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "ae7cb8952dd8b7be34044e50dde260cb0de5c0589a25aa98ec8fdcd060896718", version: "0.51.1"),
    Module("TomTomSDKRoutingVisualization", sha: "5f6c59e4b2d912f650268267e694d8869cbe7509a325481376eadc4daa1eb5f3", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "c07c045b6623bb9e384122295559b10e3affbf55daa7360aaf6240b12a84834f", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKMQTT", sha: "e4788727156655d86f24cb8197d35bfdb41c66de981cc7c022a54c69cfce6d85", version: "0.51.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "495318a4e22cf618e96ece5048036197f9a32bb8baa1b22955dcb23c0daa2203", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "9e31c5924d80272b9a884937eee74f15a88b3aa800316d10e35402e2eded21e8", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "d93700b97fdd3596bde5aa50d04ec2eb96fa0eb0fe3ee4a4cec1328a3135ea6d", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "2b8a1f543505a878011d08951df2ab9335bc405767388ae77b1d96eed2a8af13", version: "0.51.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "74aec860542a2bc12119550e7f58eca3a6385b5b489881ed15735fa05c9b9b09", version: "0.51.1", dependencies: [
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
