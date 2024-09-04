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

let sdkVersion = "0.60.1"

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
    Module("TomTomSDKCommon", sha: "0783aa41268af685ab63931fc90717aff5124f05b89d88c491c1406b75caf1b9", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "17b624d7c26858b8ae07c4ad455be1230cbcd50c07125505d76db86b9d8f4721", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "f820ad33289e30b32e13f3d172bc5e3c6c5c73061c732c0045d518fa500deb0c", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "a89524a23b5588a1e9c2717c0f1712db1a6e45d0b0927541fa91239a6ecc84cd", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "875a17ed3f6bf03ebde1de0eab00e5bc3cc0e193e31fb11dad11497c4995c56a", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "e4de86dba3eefa3eace88ae407c236522431b252eae143dfda3450a79b11226a", version: "0.60.1"),
    Module("TomTomSDKMapDisplay", sha: "2750487f40fdc6f317c208ed24729c85ff3dba149eebb557a45ac10c733fd1bd", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "44f52a45b709e324b177674da4a5180db6e04a3d580215317cfde6c35c10269b", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "8bd2dd0be973fd5ab2dc1874c37f4d64cd27ff8bcef3232a4d8edd420c0a0cf9", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "1cf7e885fd571fff0b68d43b3218325d13a882d810df5d7331582df4bd1b1c0f", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "6ef7124ebbd836f2d4ea9502e82833a71303ec7a4255ed7a687c5c90eea92a64", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "53f546523bf8abe72f97aba1140cd7acb612ff7c2f4c46063b4f12bfe9987ac2", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "53456c3c9ad6976b40356e3c7adea89452d99c6db0fe236f3084647eb1cde4b3", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "290c6bcd2b4ccbc9b9906b5b4b1c08108f6a40e4cf020a0a90470fb8d54b1aef", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "d6086f345812f9568010aac20fd49a21ff8c07b043bce73b068ec63e68f220ce", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "2d91cff3dcfaf1c65cba73e379096e3a4f162e7b19c232fcf52cc68107240821", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "ed9203f52cbcb5297b126533db144fdd8ec25e492fd7b60085ba9bd81d19f607", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "d3c4333138b12b338f8614f039191957ad3ef52db92bbca25791137c01a885db", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "12c6f63bf7dcfc7b47ba243bdf6c164c8aafcbdfcbb9572760d84ff601c40451", version: "0.60.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "7f3776495c5606e7b6f0bc5efd00fe0b34f0f30c6a39f7b63bb518c50c4ae95a", version: "0.60.1"),
    Module("TomTomSDKTraffic", sha: "d3448e23cdb0168f8aaa5145fd6f7dfe4d2e72c5f616bda45545e673c8f4918a", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "249d5928ffb9292f4d71bdf251db65151080e7eee2d99c9cc2bdb559a94705a6", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "5d25754dd935fc73cd8733d756159d9023b86e8d54fe2a089993a936a2646245", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "49b421ff57ada9995b5bdaa427fb2db045720f2e3f72768276363ddc73e3f9e2", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "bdb4b6a83395fd8b30709e3e342817523f6918425325a5f6a0282212d50dc318", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "efd02491b3526e58901ada4f9eac0ccf015a0604c69abc250d176ef4cbe3cbd7", version: "0.60.1"),
    Module("TomTomSDKRoutingVisualization", sha: "943456f7db0960ccc18a47bb8c92d58a7b40902130bbd6b398c7fd8bb663c7b1", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "7214fc060880ceb61e52d16ee812775421ffce149f871d463840a626488a49b8", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "116d8cded75f99a5c6afdf53cc5faecc037a192a85a34dd5c268e58b7529e804", version: "0.60.1", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "ae8e707d6dd53caf0725f32ece4dd24cd237ac3053dd933c8f5bbb588991f371", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "56e4e95166b037b8e3981ed8c0d9780502f087d48dfc305c14eaf46edbece7d1", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "6a67e47bc897181a337025a7c5c37e5425d852d35fc92001dfd512149a039c0f", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "db3fa64c30dca09939afe8b6940a3d01510b8cfa7646d5d89c7a43d0648b4150", version: "0.60.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "6a3e2bcab557f726bfe5619dd722a48bf670c118374792f6a3c7ed6dfc358d4b", version: "0.60.1", dependencies: [
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
