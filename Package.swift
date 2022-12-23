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

let sdkVersion = "0.2.3070"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "610b249418ba50d93edf4801752a0750af9e563abf1f37c1b68bc139daaa7185", version: "0.2.3070"),
    Module("TomTomSDKRoute", sha: "74f4d1e90f1385cd5a0f72befdc0417e948596329b5c4e9a8e7a23fefc4a7b36", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "f4f7ed3b3987c2b875914b36e9b5ecb724d5a4fefde2f6cff97c91c98e193827", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKNetworking", sha: "dabea55a583d445c1af97d001c5da653c8889ce0e0bc73350439e0549446e1eb", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKLocationProvider", sha: "cd32a52f56fd968303704cbdf9a62a97b3028d9c7f24df288fa48713b6981ff2", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "109b14e5c6bb4157cd00a0c4170b9a019d2d95bb57f7e8aa691ab0baf9bf777c", version: "0.2.3070", isProduct: false),
    Module("TomTomSDKMapDisplay", sha: "f8398fc47c61e797da3b113ece0780cfefbfa66632fa73840424f8bbf8e85115", version: "0.2.3070", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKBindingFrameworkLoggingInternal",
        "TomTomSDKBindingMapDisplayEngineInternal",
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKNetworking",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKRoutePlanner", sha: "c61097ca175dbb63ead78d424026451d43421d641a03d9fb57d6ca9247cdc12d", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "b9042acee509a6a44d847308d9ff73b3713d4d6abd4e004cbe3155dc24e43532", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoutePlanner",
        "TomTomSDKRoute",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKSearch", sha: "828549770fda30690c8c95c46b64396cf465289904bae9fa5e4cfac69c07140a", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKSearchOnline", sha: "0f5561e7f0e1052327946ef705efa5489a36b592794f377afd11de34f3ae82d5", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "1794001fbf7a3bf1624525bf65034d80d46d41bd6748dfe3fd4ce1988327e4a6", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKCommonUI", sha: "798282f3216607d678a4531f5d04102a3e35816339da1245642293af6b507aab", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "04efcc8ed89b781fe0ec62a89d5ebdba934cd3f76382466844d0fb918d915540", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "77d9cc4981d52b5abab117e18aec63ddb35a15c50f2bb86eb532dd0a27dd83e7", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "73e0eee3dc114684840583eb1e0215535fea6fefc43335bc7a1b4e6c9a0f186e", version: "0.2.3070"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "85c5ccf8776ed8075c80e09a15e3b1db510929178c81844fbcd28fd50f272c69", version: "0.2.3070"),
    Module("TomTomSDKTraffic", sha: "06dad60724d1d910a1302135df5e1425269857858013327bcd8dc6828dfe8454", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKDynamicData", sha: "0ee74ced0b60b4af895b9ec144bf41d72a8f0815be1688b4b5fdd3ba5661fd10", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "579b11ff717e13c8f1b06229687078cc519f7ea3c0ad98c614ee80d1e09dd8de", version: "0.2.3070", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
    ]),
    Module("TomTomSDKStructuredSearch", sha: "b24011ca8e8e4162687e25c39ba71fb3d3bfd2dafd040d9878d33d7ed1657da1", version: "0.2.3070", dependencies: [
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
