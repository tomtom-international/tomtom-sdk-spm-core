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

let sdkVersion = "0.47.5"

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
    Module("TomTomSDKCommon", sha: "7a29416897bc32a92e98b2669ea2a35744d04c90765044c2ba5a148e786e3100", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "99a4b4529989b08e050999827069a6b0142e70244410c403cb7546d08ebc5037", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "f36cbd094ac4cc8f5a4a62fc859ee3f1facf1ccd26e3d62eb03b57147599a4d1", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "cf4cb9f6c7b484c4a6e8ef6eefa98c8f048fc3a12c61ce950e6713a73ea6083c", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "6f1e0ab1e49a9772bb1020d5042a121e9c6928df17b46f4cec22474c02d93a37", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "40e0b9882f10312d022513b05311383d424bc8cce615c417615819cd7e7b8996", version: "0.47.5"),
    Module("TomTomSDKMapDisplay", sha: "ac04a57cdba912e4f99762da28dd3b6f843b6169ecc1918b5bb775040675437a", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "8f46a79b370b90f58307ecb63389495b60a1f9aab43c11f1716e12b05d0ef49a", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "f13a1320ebf4b5378f53bb32db2ff6a7b41e85780092e6c868b78886a27ffb09", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "f12d745430b1b5590c8ddb09eb2e2c206136262be785ac809aa7d0c05f4a0126", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "11b89243094cda56d46396a8b647f4b80383c2f354690210635621622c0327e3", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
    ]),
    Module("TomTomSDKSearch", sha: "83a699d94afd023e698178e2f4b33afcd21fcd7a77e4b94257d871fc338e1963", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "1319fabbdf520f189b7eed786f012fcac1038090f2186bffbbab1d5953e38533", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "fc782e45099576fe48e1e134ef14889b5162e7b3b181d9b8960aeecdd7d8797b", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "2527b2aa09e5a734457880ce56ca9abf4ff6d557fc5a845f746aa55b3dc68f4d", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "7d4040d32a358f0fbf532f01fab7cf8758098fca3f20cd99a950fe966da81448", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "e71add1434b5aa8b47d8aecf9defee243987763e98028f3912b5edee17382e5c", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "cb88578186170a288a2c6b10c47ed6de329982db7c5bda830edd34b634050daf", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "69d632e13673288cdb3f9a59f50a70f9e68496757aa592d6b5cd275cd5a34dd8", version: "0.47.5"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "345c4cffa1c24561f1c1372cfda4755cec9dd3d8215e3dd31de02b06314b7c3f", version: "0.47.5"),
    Module("TomTomSDKTraffic", sha: "e872640c049b8b5b79a58ad1778aebf68e90c16f4b784045314b46c4be8ebf3a", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "c0d52f270cfa18cfe153ac1afaaf52607fc2b5be848633a7b663be0dbd0f1fcb", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "25d70589bb653c3ce9d8572e2894cebd2a2e9e97e40e89dc709196c1cd13953a", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "0676dc4e9af2df59e482b90a01eca3969c754c2a08acf9bea652d0a440e3654a", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "3e4330fa9b277f45fbbca45f774d9d45156deb8095ddc318ecdf0f4f396fb111", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "8b7a42413bef3324e38e203fee778313e55c48d6a03f5a1f281b651800374785", version: "0.47.5"),
    Module("TomTomSDKRoutingVisualization", sha: "ce8d91fb1ff45fb6c09cc5af09dd7a435e61aa9a0d2cd0069e82fcfebc5c9c20", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "a6e60a49dcaf76b9618e580f349d0b2696aa2cfa96d5ecded2e76b73f7e62101", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "26b974e621f5010d4716c56f129bb0ccf6aa878e6ff3127f041fe37d57d1c44c", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "f9c0f2e437bf9e0268742a35720102a6536001e2acb1ed5b38f746c19c8b1097", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "dec34236c71c082322fb85f81c8ac9d508943891fe2aa80297731c2155e80781", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "e52f83229942b4d05b5349c9e05ae31d9bb23b165bb32a7bd2fd66b08e9f3373", version: "0.47.5", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "4c0ec96be5a195739708707c54199502fdad8c3a3071d2273ec64e4312dba074", version: "0.47.5", dependencies: [
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
