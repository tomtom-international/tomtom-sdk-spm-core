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

let sdkVersion = "0.75.0"

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
    Module("TomTomSDKCommon", sha: "3d7bf3eb30e4f7b9dc028ce237258da7c3d22c8dce61a1caa332ee2c11c63e30", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKVisualizationCommon", sha: "b384656094784a99d80eb982b50fb2695840c67792100c2461caa44227d20cdc", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRoute", sha: "3b5287283a50cb004e482bfbdf5ef139a28f86514ca8f0246ba3322d6c18841c", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "15a404ca8f28a3d0d8a906995ba41d94c3f3a12720c9a880bb3c91c900c270d1", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "e342b83a684f921ddc7008bd5f29c737a752049d0f7bed154a48305aeda1fc69", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "39267e88180648215dd60a0bee893c37ea6aaa230a878fc2ac7cb530d8c0c8fd", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "3202f0071db3a94d8277860589ae615c86e76a14be821b9e7933ae5bcddfbf37", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "2075d494cc2584c72408cb45d585c7113475bf2c5f0a6eb49571879081523c72", version: "0.75.0"),
    Module("TomTomSDKMapDisplay", sha: "51711e8696e2f1018fe31787d6d4582f58c25fd4e08d8fc447d7643cd91a75b3", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKMapTileStoreCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKMapTileStoreCommon", sha: "ebc43dc89c91a6195236c41bd3aca373240c82792b6bf11d05ca4c9e9c45df4a", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "b4bec67959aec9a8ff261f4bfad129bdcff7571d03cc27ed4c9e8d50fa3cbdf8", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "562b8fb5d9ba284962e9ea70cb199bf7dd38ad0619a6ed7e042b8c260decff86", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKPersonalData", sha: "2b2e9f79bceb2a68493441da0818b23ae702de6bef6866115a85f918febc48e3", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "3ed2b8d496f284d3d1cdcc9c9a9edd57347415687699f56112a3dcb697da41cf", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearch", sha: "c35f9334e9cafa2d72034c09b772577bce73dbecb2314b7b435d77b20c8c179b", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "66dd0ca1d147695fe2654ed9b7a732159db9ccefcee2fe7da8044a170e0fc72d", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "9d2f0cc763dd9945b43468ac0c030c1df6489b9f0bf591ea381b7e1211abeba8", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKSearchUI", sha: "497d945e4b177033f1bf79b87aa3d0a4e6f9350e81d5eafbbfbfb94845e6f321", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "57014993a4411a5ef832037b8e1068aee3b524049a8d4a31cce901f72a9d4727", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "6b522419401f65f8b8a10ceccc1cdaf329e97e89ea1e879d8de7ae9051669654", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "f8d5fbf094f4bae8c2ff34e7fa0affa2252c5b23fce924a9ed3abaf91f7928a0", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "7239e06cebb5150e811bed37cd5c19ee873f28dd578669ed727c11f5fb034a9b", version: "0.75.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "d19b6c82bc4ecc25aa1f0a9ab6c84d91a969751ecd8507673b26f0511b884a10", version: "0.75.0"),
    Module("TomTomSDKTraffic", sha: "40f67572739b16fa4db64b7618f44b58088dc2e62f8b6dded552de7d220b6188", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "15624955ab12b3bdcb7a1327c3a194c13aad509070d313b6dc970dbd67b427cb", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "53dbd5fb3981bf114e79f8d1c6fd40e3997454f6096e36a2c3a64662bd1a2022", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKVehicle", sha: "85818b87b5e0649679176d5cc9c3e616c68046da83eeffb5855c0629f39db807", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "dcc934ad55b146253353cb1ae0f9f4ed951329b7a80597e929a83e5b6f5df30f", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "b8a405e3a37212197ecb44d0326d54b78e31e439fda0e74075e6adb9607732d0", version: "0.75.0"),
    Module("TomTomSDKRoutingVisualization", sha: "0795f9992fac9c0e2e7847e664f6d125e8e4b56572d8e95657b114ec090b66df", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "26bae93303e3d5326e5998706fe5338b894a63f394dfa2b58f77eb89fe07f1c2", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "f0fa6791c1b8e7c13408cee73a576aa159d7701bdc70deadff7c1fcc8e4ca7e9", version: "0.75.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "664815d23ee9ba727e4bc797116c6b4066fe4ca63bbf32c8333c4ab1a2b73f08", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "b874542d465f2d8fd81b5bb7f0d6c5c62306320226d8ed6235f27b609b19efad", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKVisualizationCommon"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "db1592195b5018e97f44c3e048373abae44681bcea87921f5360329a1013b6b3", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "d5d4ac4b0ba52316d1587c31da171cca9000a845d11348cb9a170c8e4f811703", version: "0.75.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "bce059ede158905c3a4f1e0f8e918fe70151369bf784120b5612d8349838f7e7", version: "0.75.0", dependencies: [
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
