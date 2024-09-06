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

let sdkVersion = "0.47.3"

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
    Module("TomTomSDKCommon", sha: "3f72f4da786107c7ec2b15c53c8ed7615dfff40127461e3be4e2a73564c80594", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "0be15a9f2b549b4ca8580b02403701291581c86fe40865ee7d8a3566711179e4", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "a80397f5bec3058a768a8459fda7c0838f3d105f4e45e3d97e448d7f6c7058f9", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "c6f25e8e50337e040994c3b771c237f16a199683640f45f29b96003437ff2fab", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "8ae3ba1f99f51b4c2d4936a2a56fd2ad1f249e5d0d82bd28a1ddde37a6fd955f", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "ecf3de6d1c17a8d1fe5f19af3f9fb834ddd2a4d5140258a4f62316dd7d98408e", version: "0.47.3"),
    Module("TomTomSDKMapDisplay", sha: "6246186585b43a924d6d2feae5b5391626e118791e117548e704d337883c3437", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "60a5a36d2056d98e852ccaa302ffca890a0465c608bec51dee691f0fa333d410", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "eba4522d19850c3b8319723847854483c190d6c9f428c8090344d06fedd5f22b", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "bbe3fc2d55d988afd5f532e1da36a60a69a11a052c8367f7ad1e903571a4479d", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "39ec3d4fcf4babc2543c94d5e385b9abe00f5a14ad97418a8d457409e9730c69", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
    ]),
    Module("TomTomSDKSearch", sha: "ce14cd8f589e6e9f0cdd227b48d010284373d3404deff023dff603cfe188b9fd", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "2a1bfea74f9ac89cc84f5fe0dd86d88007e6c23dd5f650871dc43b8494e61ace", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "ea6ba7e0af63fe4e1bb278d31975f2646bcbcc796abd63ee77a44ad13f023952", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "0b30978d951ec25face6b17a254e9b54e989b6762a41a1d82e768418240b2cd8", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "d50183da30c2e50fe3e9aeb454174a1a70c71c19da45e71e6fec0b10f9e86956", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "ef13e8f7209d8a1dfbc9160a85aa1b9aeeb449caaa922d0c57e754e9036f7e50", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "b0db520f8fb7f384b00926a2e7cdef450edfb25ee0c23b760dd58252c766f1c9", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "0cbd9d3d3fe2c4b97866e589052efbca6f3243324b3384af9bae39ed87af36c6", version: "0.47.3"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "c707b570285bd749fd08eb8a1b166370e56e2be679d8a75d072b2d56c0c418f7", version: "0.47.3"),
    Module("TomTomSDKTraffic", sha: "2edc3904da14cdf35ab3de79c0392b1d8cc0f36cc69974855c32f5d2ea099d0d", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "a715a89bcf14745dd1a937f9a8cc84964647a22190168af646714b24c96413c3", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "1e78aab84201e2767d69f08f49fbf4c4a477f9839400d507c1b9571ccca75266", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "2dfd99dae171fef510e245186a0cbea2d45ca96793cdd9284f188a41d12aabf0", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "ab54d3fd1861d39d58eac32f21e6c286dfcca14134f6d2c718b9e1237a60c270", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "5891491715128e4e8a7b7062fb4987f87c295b870a78e2eaad73b983cbb15c3c", version: "0.47.3"),
    Module("TomTomSDKRoutingVisualization", sha: "216f38617bce3b7b8ef171285b0cd7c11a8a29ccd41830b4d145c4150ffbeed6", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "2e1f2ea28ba36ef1eb37a9d4324fa41cc7a3e1a86eb7b5984a6c681b7426ae5a", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "300f8f44cfdacdb50cd644b890da56cf145cc7175ba4be27ffa79bed4dc800a6", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "b3b692f7f769d7449e2af90ec1afae6f8fdc6f6ff15bce7a7a1b5d862a50f82c", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "2f70171eec7eb48e2ab67c5ed069de78a6f98e45a196780f22be6910841ea420", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "09dbdd6c9669f0f15423385457ecd9d8d103479159ab657f0ff4db4204ac0058", version: "0.47.3", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "a8aca28220031e955f158b5300d5c029853b2ed64c0a52c5d8c319fc2af98fd3", version: "0.47.3", dependencies: [
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
