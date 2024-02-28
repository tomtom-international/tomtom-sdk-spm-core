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

let sdkVersion = "0.41.0"

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
    Module("TomTomSDKCommon", sha: "bb222c47a381eb32f3826c8a33a7c2387e3328014b5251ebc987081444e11974", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "bba7ad9d6519d55bdab81df5e3c5bea5e2dbfd5f386cad4341cc8d29c7696d1f", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "ece1850d96ca90d1fb2db05c1f21c29b268c48b747bb716febfd7c5e33a07f42", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "79f3ed4bfda16acf766184379d98f28c7170585fa5908c6629829eab56584a03", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "1005f8d3d972f92ca71914216136925cf427e0059345c47bd1594c5c36c3465a", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "a517f71a81519e9b8bc7cd5aab4ac482943dfe168ff1f3c4499ebbeeb99c9e43", version: "0.41.0"),
    Module("TomTomSDKMapDisplay", sha: "f8726b0243663cfaf190ff4ba71673d48e99bebdd8b5b042d36746edf9a0bb80", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "38bfd40ee29e099b1ed56aadc51487ded3bfa41bf7382a191c0ab4bec24de8f5", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "5acfb012091626958e441bf98cde51a395000e0afde49567fd507b4c855c58d5", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "691fcf594c5529687ade5694c70dc004a44b3b12c1f405689fdbe708a5c56111", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "c64f214595491df94d991d70a77153895f64b39a45fdd8ca2a452bdd59b24ed5", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "39ce3d7297b299e661f1b91003c8427b649626efb2388d26446c7fc40ffb5c3e", version: "0.41.0"),
    Module("TomTomSDKSearchOnline", sha: "9b83cffdd4986a77334380f633e5fe80202e839f486a5e2182eccac7870a1c10", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "dd622d73549b2a55efe267733bed7fb89850b0af1849b96df8eaf0e996999bcc", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "a6f40e20e4bf8e1d960f2c0ad8d079dbc5835e53714d1555d9d775e3101c7521", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "9d7afde5464fa29db7dfe8dbd4d9826a075e2c529b11e9d698e3599f3006d5d8", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "c2b744e1d8becc3538ab1f1f50ea16295ddb1af63b372097ed9ade09dc9fea17", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "27477e01becf61e37aaca22b9f242c2bf74ad6115ba2a0a06455cef521a169a3", version: "0.41.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "b42b72bb087d08ebe2e90004790ab50871d320f1cfed74b83ce5c74b59734c11", version: "0.41.0"),
    Module("TomTomSDKTraffic", sha: "7a5970593cb7bef6c606bd60de07b50acdb13c6e52b1b467c82fb210c937f1e7", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "28fb5d2ee2e876c37368347def0bf025f5dab1a2f77cb5130b5ac3bba96bf290", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "5d9488e3ba6eb615ccc29d4941f53e7419c2a9d6346e854dc4d30c804f36c27e", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "3d988a7ad47e769a160b7be1cfdea19591e701f827c2ebab77edcd17aedc1274", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "48859f87b6cc1caa27c4b0ec87888afb7935ec1f9b4116cea1e22b9185033d8e", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "8e7544c1b423a24dabe257a7f6c06970c701d3c28983d96203676a4a7804efff", version: "0.41.0"),
    Module("TomTomSDKRoutingVisualization", sha: "a4e8165e69cfb94a8d0a50d6a08eab78becf88001799bfceb03748a4ddc732ba", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "7596aa03c3b54be6360dfdc9e70fa2b8c53ee0243c600b0ff0840b9df52b8675", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "7ea071c8fa3de09dd7420e97d7dd6213e270c67b02ef92dcff6b9c58780a9aff", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "5af150a4cdd811b72b44b0f8a6bb7d30a2b9f209b4fff29a04b77ff59ba81327", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "d081f0a14487d79b6b042071de20d665faa0f467c7ec51cde006b9315f5bf76a", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "e0b8b210d09dea0742e3469dd093a782c102c761cb777aa85bb5f923b0486f4a", version: "0.41.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "9171cd082995a5bd2eb675ca4e6650c26db96b5c6523550bd4d19bc26373b834", version: "0.41.0", dependencies: [
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
