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

let sdkVersion = "0.65.0"

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
    Module("TomTomSDKCommon", sha: "29b29ecef6eeb502ffca7a3f9b82b6a9cf075e7a822c72a8ed2742fdb6917ede", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "be4ca6009792bef1aad242a6b12cd6158f4241eb562fca0ec362482a78b32358", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "553d93abf7f6b37351de041f15deac4fff3154e02fd97b40aa97ce4396a44527", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "b84de2009b16acd693aab3c83e8d7cb6d90fe0147b91fd7e54aca03f2d2ee3f8", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "6b958024d792d3ca5d292aa4e1e0809ccec3545a636a96d51941489b47be5696", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "9f7df2c13747a4f2782b5b87a273ff185c869eedb4339f3ca3cb0f397139cac9", version: "0.65.0"),
    Module("TomTomSDKMapDisplay", sha: "cfa8f75e97552cb156141ae49953737918b2efe1f2cb4151296282ef21c22d7f", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "1c27290bc6cc26852f3a0af72cfb9cc6ffb3f378bedf1dbe482d4f9d0510d89e", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "bb92134df600b53d676821242a660539cffd2fcfa34d4ed825559133fd6958bd", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
        .corePackageModule("TomTomSDKTelemetry"),
    ]),
    Module("TomTomSDKPersonalData", sha: "7e41c79820455a1fe30c496d6d7c7c2c080fac1ec6f8d883208cd31cbf8272f8", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "7ffc971c686b423d76e47d36361d59d682f66ce7646d58b04d78d2b56e907bc4", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "750bafe6ae1e682074141ede1dcec832807bc37f2da4b5a8aaf4b144db14db5a", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "97d13844e0644737726346e0bdbc5a1492c275d5d4d88ba1e578c486f573e64d", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "382e52047ebabc7d643025106f40c16fda2d7dd8c507aef6fa6c2c536e40079d", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "dcd91941679faa26901c94b242ed5d0a65a5038186ef2a0cdc2cd1f315b35341", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "ba80da504c0dffa3a415377b4ad2141894082efb9dcb308009e8362c55acba9c", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "cea5298f44865205e68bfc373307cc752349f4b4299089595ba4a254eda37817", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "8acce8a7de4140b544b5c508d242269658f017b57ff359165189be73aaeae077", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "a4481bf465a75b145c2ea523f711cb1a26c6e5740475f2f156cfffa55205719c", version: "0.65.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "12c2d53b52031e29e76026eb49b75759ab7c9a7909dcba07e077c9d5d68b62b3", version: "0.65.0"),
    Module("TomTomSDKTraffic", sha: "75c7db0caa3bd213f0a52277b63ece01d675429cd2dbe0906276b1b0348f2a56", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "d8188af2c08611d1d134fae25a42bedca38f7573fe3309b87c99b331ea066fb0", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "8d6574e45c13c59c1d8726e8d6c3fc8d895644150949882f504a317fbf7aa70d", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "97617c8b4018b943d9702e165dc1597037a2454b92da90a682b3736fe3d74b4a", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "010dc2c28cfca2cc416a568fb33bb656f27a26a9a085293cfcdb8a5aee4b5ca4", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "48ba2921446b9726b9263ed462220d42fdce9791ab5c43f668206188ac3b0b8f", version: "0.65.0"),
    Module("TomTomSDKRoutingVisualization", sha: "d4583efa14d9504da3c3221f84314d7ef640b7342600f08f24124e03ccb8863c", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "4b1b832c6835cb7aa3fedfe1e0f07c0b6e5cf072d7016c0716b9de343ef8a7bd", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "a391378a28d0eaace891b7adce54f7efe62f1b72ee5a083b3d06a0fc6d012f9a", version: "0.65.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "b6753efc99907886fb78a615d56d80dc2013c8d56f8b42d0931c2ab2828ab997", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "e9516b44e775a388a30c847762bf1f47f21ab7de214064486033af2d918e1a2f", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "8545ec9f0423667a1bc8479a5549f70e722ec20963867ae7f4250aeb26dc91b3", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "dad95132456df14e78343f3a34c08a3239c7c8c7ce6446c5f8e9d4f7acc23892", version: "0.65.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "6889608b4699421f4234335fb332d7e17ac258c09b8e033cda2249945f8158e0", version: "0.65.0", dependencies: [
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
