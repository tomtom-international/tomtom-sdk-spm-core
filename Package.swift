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

let sdkVersion = "0.32.0"

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
    Module("TomTomSDKCommon", sha: "4098df4880549921023710d78bac63d3ada8f686a7efc955a332b260bfa4182a", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "334e9a76fcfe5d49955e9180ed027bee36c1bcb642cdb38876ecbd2881a66352", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "05269086d4ef42775e42c1a99b527be5f663bf4e65ac974ca764b619cf778e7d", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "5980eca13a2392b4525f66c771f8a9e3d14eff35b5c830bf2ebd3f90af96166b", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "3f730b55647bfd6162d41262f3711e13aea31d89a12e71baf1fcfaf0a3b669ce", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "e4c67456bd2d7a3c0cdcadc016e2e5f0cfedc77bd7c7695c35406a927a432dd4", version: "0.32.0"),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "7659b004fad50f11d54404ce154980080e9d1a8ef1372f21c9b3b8272cc1aa1f", version: "0.32.0"),
    Module("TomTomSDKMapDisplay", sha: "2cf80ffe92bb1d44b94649b6a30bc68e57fc59402098a296d5fe0ca27b601733", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "3b497b47134596f3696cc8ce33d0edd19044deab787dada1857a562015508b3a", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "eff01b36dee380adb3c95a43928a5ca71291157fee8f245f56aafcf793e7c11a", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKPersonalData", sha: "1e869edb4597d9523f65ba020595e9d8c42e04d41bc079307af131e71b85bde9", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "4b853835d2fa3490c863d2f22f45526e72b47ba610201feb7e906dd3f0fb6fdb", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "d99205da4dc33d00d1c217f1c91f7b14a0fd78a56b3dbd209fdce53ce4a6fb8b", version: "0.32.0"),
    Module("TomTomSDKSearchOnline", sha: "e9d4c9ad1a975b232410a51b6bc8d51cc0aba5804f62348cdec6cb5b6830b6e2", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "fdc69e4686ce77af9f6953209717f2d22931705f31f656ba527b992199a4ec1d", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "a959f7bd34901b747564310d642fe399e6345e9c6aad7eb04531073808181aaa", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "fc139803aadd94e36924b61659d6e6777ee192a02dac599a2b2fd7d66e10dba6", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "0345ee78b1b8911ebc422ff2a448c4240a8bf8a34e30e0d74830c0faee908d86", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "c41834cd3aa435ac83bad387aca2589ae2c37357a18bea84f92fa948bceb5ce6", version: "0.32.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "d8670c78be0b5a570b57e00d70dcc73a7978df9d9a4514a6136fd7d1c87f212a", version: "0.32.0"),
    Module("TomTomSDKTraffic", sha: "2053d5356b16423e341f8ee3a5ca43d730c2801633338b4468a27dd6293364e2", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "8551d2712a09059b1e4f299eb0b8e1fe1fe67af22b6884b0bedcf6616c1d611f", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "bd494d04d1b8e718016091fb6a98cf9b9372d23f5afe9d4607093d44f2e272b9", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "8be923fa97cea577f3d103ea62736f4b56f49ffcc2167d3fd84e6ba444bba8fb", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "168d5248f497f2b28a0e31519de6e4b633c80c602bec83ce4006082bfc36234e", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "d91901d78dec244bc6ba643f90c2cdf51db883d0baa135cd70ca869dab9cff7a", version: "0.32.0"),
    Module("TomTomSDKRoutingVisualization", sha: "184ca587e840958ecd013f8ca7a6ca7cd1cce97a71db0b42705449541be16363", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "e8ebd9f7ae3692d74e74c8bc5c9b311643aac7b40252bdd4ba5f5344eb089be8", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "d023a2e883b3dd6f3e5b505171d29f541216c8519f1e00b8834e202784811ada", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "27d0557591f070d698c369ba23464ee2a4bddd169282abeddeb69450c9b8c894", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "d38dd5fc9d28bfe9aba07728ee417ce33e2e8dc08de943b8d74ea13a8b2dba9f", version: "0.32.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
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

    static func packageDependency(_ name: String, package: String) -> ModuleDependency {
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
