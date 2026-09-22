// swift-tools-version: 6.0

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.74.2"

let package = Package(
    name: "TomTomSDKCoreFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [ /* products are set later */ ],
    dependencies: [],
    targets: [ /* targets are set later */ ],
    swiftLanguageModes: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "e5797b302cbe35c02894335ba6bc4736906fcb4d54ede7844dc30a442a001cc7", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKVisualizationCommon", sha: "3e78f4728eeb740f3f6372bd581dcd84739028583810e60906248da73749e236", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoute", sha: "2e25694d3eda08cb9137da9525a2080d76e87d121daef7cd45fa5efa421bd052", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "0be1afee12a2a5da761272724c26d22ed007cb2340ab39bbe3d326821b44c72f", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "a03d8fbf27ee0742a12a2b342d929afb253c3aa29dea44fc5b62731eb03b263b", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "b2ea21a3ab0372450598eced5d10dfd55ab039a1273ddbdf643ec8620fd902fd", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "c28e764c69c7d6d47eca2bc4357e5784310ae20880e509bc5453ec4bd641dd88", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "2b474085d7ec730c57d4ce7dfcd2b751cd1cfb320303fdd805e7e4d08e62526c", version: "0.74.2"),
    Module("TomTomSDKMapDisplay", sha: "0c08e9125eb9752a9ead5d41a288154bb563a77c479789fd39cd9cd8d154fd5e", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKMapTileStoreCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKMapTileStoreCommon", sha: "0abca4e59b2643caca8d45a41fe81de745ea811ec3ea51b7883f90d42b735dbf", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "1c4f61b7e47ff57329014867fc7cbcd0e194cdaee25cfa869ea07ee7fae004c5", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "f8b5d166ae1b41241a13616f17fa093c3c8c1913b6e4a70913ed57e1f41f9ee8", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKPersonalData", sha: "a9bd174d86bdee0a33d131e33318c5bd28bc1b035ff6ae506e30cc1cfae4f027", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "aedd5006729445d65e0eab339e9eda1abc16756f61ec0218eed3a395ed111f6d", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearch", sha: "4006adc4065b609344cdbb2f1ef5a6b8d911a413db8c3bae61dbf1b0c03ed1a8", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "e5714dd898a02d5f22c5e68076062c7dcade466c2952108fad45d1cbc45faaa9", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "aacc729680e1aa66b72f9e39e5ee98e8ae15069e2ee46d9d66ee0a9b76b5ac55", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchUI", sha: "d12936a136424bb554fdcee9195a361cf468b446589728811337ad1621d676c4", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "bbb90b7106d826c5597af1c04ffc36d3900999f444a4af890a7ae3d10e6c7e63", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "414af764bca1def2c683bf022c702da5480dbca7fb11fe64a612485f774b46e3", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "3ad9ddc71bbcb2d7ce1815bec65b258205cd559aaa15b812bc71db4eb4fe633d", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "1ec6ccddca0a979b86b517ad61c891d4770c3ec9afc6894f9e7c08b33566e197", version: "0.74.2"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "b9093d78e19373014b961c46e16401c61341c083e4d4abf515cdd9eaf595574c", version: "0.74.2"),
    Module("TomTomSDKTraffic", sha: "1461ea1c41282c4ba2dc0dbedbc45fbd11f07460449515c7533d516015a7bf14", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "fbfd5232f998acc1b28c2d964a859db5b8bdce80dd7cd5e5bd8c2731fa6ba9dd", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "957f5141c734a002a58cc1e98288af5cb4ecd71fbfb53548b596598e861d96ad", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKVehicle", sha: "d5b43214f0ebcfa4efe1a0c52f905d6b9ba416a3efda7eaee540425dc2ca7e54", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "80916f811f128491b599258f86187a1c4b967e2c5aa084ad3322f8a32e2aa95d", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "90c3efcd8334b0a6838a5d6eb24e877c465a24487846034f0d169258ffad48bd", version: "0.74.2"),
    Module("TomTomSDKRoutingVisualization", sha: "6c99e4dc802f58a310d529cf3a85635e0a6f23a340dc0d2476ea531add8adf3b", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "30bf7e1ff266b81b6451726c22d8557325139de6ffb4731f575b9a51af7a3e11", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "52084c6d23db3ffdef9b3a0938ca09a5d0327c38bbba3c161025dce67eeb5ad4", version: "0.74.2", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "4007aa9f6a640f1f2d68a73756fe900899a73d7646ebc77cd769099b886cf490", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "6a350ca46eee247c21b788bd8d1dc2b4548a3117e2e0b259c680dad8acc37ad2", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "fd0155c1d0f0c585121ebf3f9723d6ce290d5c7072c6132138f1c8029efdddee", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "25d76a73c1c41e14bfd121778993dafd5b1d2b6964ff4cc81e798cddc5794413", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "565a9a5b08175b7bdaf74722eee00366fc7ea202bfa137ad4ca4a80e8b2c8d3d", version: "0.74.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKRoute"),
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

    typealias StringLiteralType = String
}

extension Array where Element == Module {
    var products: [Product] {
        compactMap { $0.product }
    }

    var targets: [Target] {
        flatMap { $0.targets }
    }
}
