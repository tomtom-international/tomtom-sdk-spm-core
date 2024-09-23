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

let sdkVersion = "0.62.0"

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
    Module("TomTomSDKCommon", sha: "386cb20b62be97f3a4e498a58c9044277565e1a8e28a7c24d3212048bc7ce5bc", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "b63c4de047227c8bb9b536b8d260ecd54bf2b788f18be8adb5994158251ab70e", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "ea7472f900fe40eec62f9539859a57a31c9e13575080364dd7773ea7b0e6936b", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "f9d01c907c09b3c20b867a585285495edeacda523a498dc89bfd621a72fc742e", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "7b2e55571ff4c9012d245a10a16ba72fc64637e619316d45464470382b287925", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "55f8ea644501d035f62dfec0e300de0e1e95effc91652f3d80f5b78f6c4aab02", version: "0.62.0"),
    Module("TomTomSDKMapDisplay", sha: "593cfabc5a9584895d6b564ff70fd8dad379314b687c890df2da82b5723ae1d2", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "5e4803f72ced1d07616e9b26d293d25791ef7204e0b57f073bf10f5f317317eb", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "7d1949a291af15b7c24c21dfbfd59093c910fbd91e2c61490c7e1fa3cccd8dea", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "c8016c1ef6869e9073748fdbf554a15050f20e8ee37e5d6903b4567a27513091", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "ced102f4d60a907c2c7a8e9d0cdd806d62250318a096d00ba2d58ae4cd0daed9", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "cae962698d9af2783ee39f2c3d35e3e6ec0926a59981c61235b4bed913162fba", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "4c97c6fb8211fcc8e9a7a572545e2d53dfb60829bcd2f8e256c14bcdcbdb96b9", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "7af2573af45b73a1f6a43126a6d4fe47b4c1a8ac976b99e50f47d4ac392cb05f", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "0365ecf98be0bd667eaab35c56e717cc0a161506f200d63d676f92784614a243", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "90d928a6bcbbbbef669921ecaea5759c429416e913b342018b9cb7fba1a16275", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "3e14008744297edd8e57e6380a52b05d05455da03a03448a9d82c21f05b16408", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "d7093e5ceee3a31afd3753f8e062398c6ee5abbf289fee9b36da0dd8f326e332", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "afdd7a25a811b260b78ee015d2f810526f579ffad36a5f6580ee81b923119d7c", version: "0.62.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "3df2bc7d31c22b5019bda4c15682cdb441f2827c95fa2442c079079aaa41291d", version: "0.62.0"),
    Module("TomTomSDKTraffic", sha: "a534105a968c7d25acd2d28a807725b7eb8b831e82c5262e144616c369fe3861", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "c777a2426c936c2d3281f6202e397d3c61d3c7063d8fad24c9e62580da7fbcaa", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "3c9d5a8a998b6031246905e844358b4048dbd8b69aaee7d63d0ad7d5e8af2be7", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "3677c9c60b9069737be056f00dd8ad94115cd39d39a9f17ea9789ce98f8804d3", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "1450d94d56b4594dc003600d1f4bdf10bd43a392e8758dadbacc3eee6d6993e7", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "ccb04d901af25cf94ae830fa54aa5f2928a99b64ef2d2f4fff83d5d3605cca57", version: "0.62.0"),
    Module("TomTomSDKRoutingVisualization", sha: "ba3684fccdba81289023dd4c0c48480c8dee3b35ef9f09c41d08ad71f3e2c9bb", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "8bc71c8f81f410f4357e33883bf4197937283da9aac87dcf61053e07889d0833", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "8cc651fabc9a225bc11c0928aaac4296b8ca5c08d3844cd7938143e55ee0fe6d", version: "0.62.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "4cfd9d0fb16ffceb984aac1cd191b7d082aa19be92e9d01852b8d66150051fbf", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "ac800834acf95f79ce01bf0934d4691cf8bcaaf10d99fe4eb7784aae3067d290", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "2d86431166f213ef8650910c83309f38e7599a3fb35745a66ffd9f71efa65d03", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "fec73af9c9811d205a76cc2a40aed6182af6d73b40ada822fd99ca3989d58cdf", version: "0.62.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "efbe8fd4ab046ea7505f13e1a00a41bcb2f0c41a64d839b3af54667d012f3a45", version: "0.62.0", dependencies: [
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
