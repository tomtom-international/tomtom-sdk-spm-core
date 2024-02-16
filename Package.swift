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

let sdkVersion = "0.40.0"

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
    Module("TomTomSDKCommon", sha: "608116a8a4f464f2f035c2922b9f85c36e19820530824b53dae41a79ca091547", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "1895e39c06d3fc41a93e8d00c67f29f3a0060a08ea8ed61de1155f31f78bd093", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "d9e7ab4b73ca1e46f0af77456ecc406bf4642fb6b6366d5f103fc354d8b32eb5", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "7ff6ac7f02b1ddc608024622c3526a549ee014d584c2b81e733ed6da301d58bc", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "b076225a04426b81b89c011d13d478a00a17efcd029c61732b864c5aa8c04875", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "44e3f9dd4cce3663d3d3ab333aa733a5d02e2a092d5b52c384f9fd7c95125c51", version: "0.40.0"),
    Module("TomTomSDKMapDisplay", sha: "96c30160a62d247c96e1976e43f83cd54b1781ba8f2f89b071d1f3a66d639c1e", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "b7ff6526845b93d80eebba3129e2e1f73fea04afef722090dd299831c21b17c9", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "08b2ece1bc583637b8cbcd33d88cd42411fcffc65004dda9189b6ef1f5fd8d72", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "1da6138e0a3966c1f727d1de874fd451ff5fdf776faa2285c304c908a44a5fe5", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "b85eb35276eb1c61a19904ff693d8a07c10b8a695600a45cc6901948f9760f4b", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "e3f4da237cf5f9a7d5b08ca4ace920939497d90e7851c4d553aa6fbd5e23fe50", version: "0.40.0"),
    Module("TomTomSDKSearchOnline", sha: "34f47ff2bead3e085b5f3f964e77d7f2d15bd0946ac5a3810f7f591e9852a1fa", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "66e416b8a4d557710d9701c564744d355c0356d1580d1d291bdab58ca081102d", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "466f7531a0ab19be90e79dcfbc11c6eaf3f5828898d9574f2e9b590184f2fdff", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "f494edb9ee95018efd70bd257cf55bbc9f2fa761eb72681208d6e3ff4b34fe7e", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "9fc6adcffb0786727588c7e0180153c4a40103d693b929004ab0c9355316f75c", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "aa0c82083ebc45ac41afe2eb37456c841c8865c3e5154ec92b55efd980773beb", version: "0.40.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "cb8fc140490c71a67647c73f1fdfbaedea32b04e689b8d6e2e6e7fc29f12dcbe", version: "0.40.0"),
    Module("TomTomSDKTraffic", sha: "1d769b2d9a42a1e948346aec24b9bc7c3796c5978f91e81103398fe5f6c8321e", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "5afdcd78f09c9df03232a7b41e2fd891681c37880d07650887648ced0b094eb0", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "956adcdd1897d4677f5ea56207456529b216256bc80ac89933ab5e82a8637523", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "27603016f793bfe1f2d93c1fc25cebabb24d8b878395a2474f8e6c2a1d71429f", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "ec36517ae45dd62e86da2e661a84ce2ba1cac22ec51e53da01e96d4fb3311fd5", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "ba377256c652f6a3ce504328ee505956016d4c46913e4d66ab02593e5ff308a5", version: "0.40.0"),
    Module("TomTomSDKRoutingVisualization", sha: "2ee84242bb689fd02b920c314b76cc33cb9474befe673d8798c93cea0f09300f", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "8b78f967c054380dbc7069b0eb5e07dca1f8958d1ed8549278105cc97ea1daea", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "1325a20e3c3f3c26649cc69414d6ada892240a0827e43c0463e5837d1f6152e2", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "7a62158b260c48c033d95081fc3fb463585f27e0722af897e16c57ccd0e2b5a1", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "985f276db5f1f091b8102ae0cef468a7565acbacdcad17bd66e37413531c7d14", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "b428682862825250b604a2c075f9038d1fb464efb5341af5e2039a37dc24f590", version: "0.40.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
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
