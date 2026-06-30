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

let sdkVersion = "0.73.1"

let package = Package(
    name: "TomTomSDKCoreFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [ /* products are set later */ ],
    dependencies: [],
    targets: [ /* targets are set later */ ],
    swiftLanguageVersions: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "9058572d6a084b2d5159bb4b31a847e039b924a78dbabcad65b901c7ca66c93d", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "c7ebd3e6a9b0633edb6936f7581b91ed2db97ed54db4e5de54bd28f51f3c737b", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "60c07331200e656fb54caaa80b46de952f40b81f65dbc1e5766aea8ab56856c8", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "2d060225dfa1b0a5e5b6ca6ba80ff61c4fddb4f31a7c41e4c6280189133ec9d3", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "0d159e31f6bd5e9ebe954d7c5d50fe354fea729c72806dbd7c63a58a25e9fe16", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "c97ec3499581bfb0419d04bf6b4168b3e8c4e05b46176b2c698162b1f7192e59", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "cc087e4a22f5e9703b51b5bfebf45475221dadeb4556a3dc238ae0b62a35ded7", version: "0.73.1"),
    Module("TomTomSDKMapDisplay", sha: "08e5bf13d8c030d7f8da43ecad8a92e1699d77fbeb516f6b60ebaadb7655335b", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKMapTileStoreCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKMapTileStoreCommon", sha: "5cf5126d6739b91fbb07e88171f3bbb53fe60effc6d2291248bbe53f2fcf941c", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "5e62dca25e60428772f965c11d3b83ad530d5f0b4cbe0cc8176165d1b89f0148", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "feec4bd6bdb00547d1bbd4a5e3a91dafae1359dd6366f4bcea387ba24a2afa55", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKPersonalData", sha: "1e00b113eaded77d00adee68fd9c9a397ba88e78f319cc3eed51a95b13ec959a", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "09b47a90310b629a25da8f2e32688b8a534aefcb9a06307c7f018f0612d1e32a", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearch", sha: "16c99f6305e741bc4d9f650f1784d0f25a732d1f91ddeb0e60f7975e1e59c108", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "938a1a92fd98742e3b2b67f68e068a80833e2c943aa1505df43aabfa7ddfbbe7", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "57cd2b756a8328e0104032ce4b254e3cb7083fc22b68f3607c3d5eb5248cb91d", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchUI", sha: "2744d4fa8e701be886c71d7d7e3bf202cf996393f4b899d388c23b3929197094", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "2bf706be899a61bc9b3dddd2309d9f35b77be848b1262ac9736f482d7a7f7e09", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "d2dc1dd0f0c4d754460501106eb6c1d02fdc441aef2bdf4e284acd9bd6021c54", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "50c6278b01491270e710faae371e8b8854d88562d479fa875e052dd70876a70a", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "57e1efe9b03385979e2fe0d292570700352d6bcacca527a530302ea2bcc51659", version: "0.73.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "4c9b2a8a503500e43a6588188a434a9f18a9a45bf7d4eea87804272eddec123f", version: "0.73.1"),
    Module("TomTomSDKTraffic", sha: "d0d4a20705d588d35f2f95018ac6e00676fd671ca37834699f7caadc625613a9", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "3bffa50f5a1daa7ce3aacb90ddbbe3c2de6b690319cf28e1f7c16e995d99a92b", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "333cbaaace685fc402e09217793fa16f0b8105b0d809ad44a443b41e9a7f0665", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKVehicle", sha: "13389ba49e218971481da1619d8d4cc0b59d796f0406fc006a5c83cabcd41b37", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "faaf1c07566cc360a0875e7e9d1f7316bce263caa8544303485d90eec930fd2b", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "00e07dc0cf72f055fb1c10086e373f52018680e212cba19bb031a9296a3545b5", version: "0.73.1"),
    Module("TomTomSDKRoutingVisualization", sha: "bba743c0ac01b7f638ba04c34af1e76ecd33d4e9242d0517b52cae63afe5ca7d", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "9bc4a62ff23d14cd94ef44784a0e3ed6be4a8553bd253dc072e68c833fe1928c", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "912a011b51e73532e44bde0fdb7d16e6926b78399b18a71ad1bd50ce76592786", version: "0.73.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "d06f67f0d7488d5872fe8b4aad2e382ab33f03d6127c4876444bbc32daa4036a", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "45567c9942383041787dd326d9cd88899ce5df4518b9a4f93dc8b273ac7f571e", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "26674500fc1038dfe418c2accf3c16c270a43526821cf453e223bda7b18087cd", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "44c8c36fc6dfd4621adaff2a027d36e8ce5df5b51648751c118b44d6905231f6", version: "0.73.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "3db2aba0bd1854ddb33e99bc3ead7fcb61ba726a58d0c34abc7b06ada72ba236", version: "0.73.1", dependencies: [
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
