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

let sdkVersion = "0.34.2"

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
    Module("TomTomSDKCommon", sha: "2ed2e239379a55740a15180a0f5d08ed9402819385b463dd60a3bfd5a05e5350", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "044ad43edcf68fc180e91434e77f16fcf0e017274c9582c73562196272884734", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "5921a43f293f92912faf3fd7a0821145e15b0d6de8c88a6376c84300d4edcdb5", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "a63235e2fe929bf1d6d6a4223d20c0527db8e25deb4c6520b6869160c2b9b845", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "09e3eca1bad051e8945b0035936a0bc6d231a61ec5187dcbb101664d1494ef69", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "f753d4583cec418e7441dbbfaf3a51332eea59153dd28dec3ce2ac74185b6adf", version: "0.34.2"),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "5754d475af8ee0ad97ab463de47c7d6c2919b9b8fe5eaa3130106aa12f5ab402", version: "0.34.2"),
    Module("TomTomSDKMapDisplay", sha: "c66031ad026ee1f82b50e1394ef07e7b95bd78dd756a59e595ec50bcc6e394d8", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "c1e333bb446ae6cb74bf796faf307a82b27d62c338c9798d2e91f05fc903ee0b", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "dfcc127903d94521ba23ea4bef9437df0417a0d496cdd692afa1ada23d2d11bf", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKPersonalData", sha: "03c288eb27e8cef896b5dce514ac6a95be1c9800fc93998e45e93a0b2dbc78f2", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "fe5c758f6429b9e93aabd67165dfe57ba2f6edaf5c3670fbca4c1efc779ae05b", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "30cf04bc035d3445b9d2b8262e1cc2b951ae6f8c72889c2b1242d10e6aa165e0", version: "0.34.2"),
    Module("TomTomSDKSearchOnline", sha: "b655865dcc9d48550bac47ba910d9e323d060ebeab02285276e3791e94b23b13", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "53b304087a53965f0bc22749a43b3bc76e38bcd8f9170cc966cccf8bfb5073df", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "25ece9f37e24c5583f1f7197c2b6c7db740fa1bbd414a3de21c4efa557735983", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "758d5eac34e7b5f6ea6e7e5ae16fc02faf6d1ddbbb238f5876841b88e20a51eb", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "60d5af7de992338faf816b7ef4f41a68938127d8f4ab144ae5237e2680f0fbfc", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "ceea41c44edce59ddabab1c778f2edcb03cb4d70781337f4589f27de3387c26d", version: "0.34.2"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "a52431df36c8b72f8380aea69dc43c3c4bc0bf1ebc1974fca2c5c093e1ca6db4", version: "0.34.2"),
    Module("TomTomSDKTraffic", sha: "cc67a48f7e9dae855da999cc90e76c8b2896790627413962a12812762eb9f36e", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "e9d45e31cc5993fc6e1b8db3f205f2e8468d63a32568f0957ce104be2983fe67", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "17affdc71858465b4386e3c4122ede61a508f012aa19e9383d2d772347dda088", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "1b38e0d30ee126150e7cc9875966e63db87e06a336175f65cc387fbd268ce3bf", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "85e8a8bb65aaf2ed743d27105eedf469eca96b327ae1b8362ca058bcc6866c68", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "e90ab8f74e0fd8d7fd442d400f214719a942ce4e2c0cb469bd124d9a610d2a53", version: "0.34.2"),
    Module("TomTomSDKRoutingVisualization", sha: "48a15ca409716d849099a3e0865f630a1f66f699dc1682c776350139c257f3c4", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "42d5c5ee2b757c475c006bde12c47f3a2238311e317163c1dd141209356e27f4", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "6757abc6ec3319a5061deab2146194f6ba90cd589792bc4b988dc5e6967f6345", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "3da0baa26f23a99bb6788f922d216c3c346c5f142241bb42994f536f650d8079", version: "0.34.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "439b6787b1ff42b599ed78c3313912f14e2e964608b94a5a07fa0ae07bee528a", version: "0.34.2", dependencies: [
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
