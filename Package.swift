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

let sdkVersion = "0.47.4"

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
    Module("TomTomSDKCommon", sha: "65601b517c9bca74dc5bee604a92cec85a6c13ccc3faba7e1c4b42939feb0567", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "faa7035b5d3353ece54e4b0cce3163f38582deaf1807ec63b8fd915b871672eb", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "a19f574169299829cc086517e9e763553c95d17b868534667f64eb1cfd5c3d65", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "b1d1e12ee857072329193ad9d777ee0fd9ee5c1fb8359758d94422a5fee4b26a", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "e126de3d9353cc6dd9827c8d28f27e2228dcae3c9c29028cc84b329cb939a9c3", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "561004e1383656209204f9d857cfa0a21ba49fadb93ec6f5d44ae170d8c34b1d", version: "0.47.4"),
    Module("TomTomSDKMapDisplay", sha: "32cd84eec5d29560119c8fb6375cc44192498782a8eef68143f60c1efc86f301", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "04632e9439e047b2cd83d66e1fa44a274df7056ee093db8861a1e8aac1ba96ed", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "a0198bfb53d6fda214c3c9177fe0836ed663a2ee54e64924c38b8b49afbbd8c7", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "6355ae0610bc24a5ad8f6cf553c440bb58389a8ceecb00d067e20dd73adc0daf", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "aed055f61edb112973229a4de4df07b7cfe5dda0bc7298b264badc8f43d9ee25", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
    ]),
    Module("TomTomSDKSearch", sha: "3b0685713090ef5c4a3ee8f947a9265343ad04ed6d2d6ae5de44ef1e61c35dc4", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "ecc042692a1fd7c870865fb5a0de87c0e4179c5542cfd9d47993dcf315459316", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "7704c242634b120216d63ae5c4286e9bc673be059b5e050181c8e99fd726ddfd", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "d70e773f2260eae1ead7adfa33b521c62b217c96e7c55ec00d2d3bc4c4c64b20", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "4442ebc913c8c711bd23253408578cd9f72040b022bc4477ef0938cc9310850c", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "80c1f72dbde18b3a37e834126acf4ca9f8de6a502a4e3a7e39ca391c40bf2435", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "824837d9f94567c38b0c62390788efb1362a9daeea1ab8e4b90e3e2976d0caef", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "c92ab01bfac4799037ecb70932c9d6f0d1cbaf11f84d0008c76dad7ee2eff089", version: "0.47.4"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "98192750dd837886d4c4edcac2ad397822c462be1872d43027b72a49242dbc9d", version: "0.47.4"),
    Module("TomTomSDKTraffic", sha: "4b80a4d2d4719a043985e78fe09a15ba6f9c0c8732946500e3f0d700b4cb82c8", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "e797773cc462b62ea085ccf02fe3b42666f566b87b852ed94801af60f84c45d1", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "76d58a4b90d719c690e5ad082bc2814f4ac2f71710d23d577915f631fa8c5cab", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "0be5e3a320b7e33ba4f2bfc3b5d481b4dc2ddd650f5c1f4ab18f1b77226329b3", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "e01597edbb1fffb00a47dbb706874c198212119c339d1162ba3ff3c29c477513", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "fb05e010e6e832fc31535986d102804bddedfa1ffb0dd7b13636fb434b077826", version: "0.47.4"),
    Module("TomTomSDKRoutingVisualization", sha: "1c877e49b0b5f6f0bdd4d9d4732f4cd885090e31607c6a954b05e1e101b2c910", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "06282988ad74b5d10d4f811c387144901ea77f9fec646f9be9f9f4c06cb3c3e0", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "1acf349c90eedcd95ec9e66480daeb0cc0e53f1bfc8c013fcf595291c9228cba", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "37f4981fef60119b804f8e3e80583b330592985e1d054792104ee319c0abd447", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "6678210856c5d9b8959873c3ca0e47d3207ac6baf1bd6bf85cf0767a95706e2f", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "6ab18c375ba99c872a89e9bb68a7b3ee474e215b22cb4c4fa3a96aa3ee0e14ca", version: "0.47.4", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "574522e4e11d76f6c3692603e5c86d02882df47102856491bc6b0ae16fb999b8", version: "0.47.4", dependencies: [
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
