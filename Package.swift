// swift-tools-version: 5.6

// © 2022 TomTom N.V. All rights reserved.
//
// This software is the proprietary copyright of TomTom N.V. and its subsidiaries and may be
// used for internal evaluation purposes or commercial use strictly subject to separate
// license agreement between you and TomTom N.V. If you are the licensee, you are only permitted
// to use this software in accordance with the terms of your license agreement. If you are
// not the licensee, you are not authorized to use this software in any manner and should
// immediately return or destroy it.

import PackageDescription

let sdkVersion = "0.2.2884"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "f1ebac17624510db3d6cea8c9576702b1634ab338fecdd90a41153719b70ea40", version: "0.2.2884"),
    Module("TomTomSDKRoute", sha: "acbe0e1e58731fe3f265ae71053c8c10501c969c3aaca3474895fe1337de3d05", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "d3a87f682c189af0e91efa4dec365151697477dad71290a1d6ac11bba911f88f", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKNetworking", sha: "c24e16e151628df1bc15f69d019d9910986298ca83bc7f6faf5999c684a87e14", version: "0.2.2884", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKLocationProvider", sha: "7067f5d43a3d1a774d9deeaa415ca4569c44db8593512081c58ed4f740e6a0de", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "d408e7c144d3ab14daf4a4f3377490cba7430f1f37a3a8f754bd6bff16f05943", version: "0.2.2884"),
    Module("TomTomSDKMapDisplay", sha: "ee42b95e99b3dd547aa2d26f3090ed51b0ea46c112df3d43569f96015c85ebce", version: "0.2.2884", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKBindingFrameworkLoggingInternal",
        "TomTomSDKBindingMapDisplayEngineInternal",
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKNetworking",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKRoutePlanner", sha: "f1229dcaec49dad08aecfea95cd26ac0e7d02349ea4a76cecc8d964d42c2f553", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "28af292b536703c3fcffdb0f6386e3d35b348de5dcba3d0093973b79cfe78ea9", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoutePlanner",
        "TomTomSDKRoute",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKSearch", sha: "61c4804fab4c3ea97c94d0f639bb1054dc4d7df6fd49935d18926ff7810aef0a", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKSearchOnline", sha: "01535ce0d5150415674bf3021ae016641758fbb018cd25a6ca6c0f45b90051a2", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "5b0818a235a48ad3c0d01177366d57f9a4d885e937f0f0be39c03f99e2e94bca", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKCommonUI", sha: "2c8eb2b12fde0a0ed4f9c0a29d2421993e694fa9eff07263aef66ef3b56c2983", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "dba1d6096f6248c6e629744f0d15a61ffb1fae5370f52614d06df277e50ff7ad", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "3c3011c9d0d94d85fbc1ceb60e90a8c8cfd8b95118e25332f1d8b18dca508ff8", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "9ff0fc19ebd0c2b3b4df9a129500eeee634aab305ceec4e2dc588df73bb5aaa2", version: "0.2.2884"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "5d1df2e6f5b2b9c0a8f615e5e10d8e4f49c14173617fd51b4e11e52f9e03961a", version: "0.2.2884"),
    Module("TomTomSDKMapsDisplayEngine", sha: "_SHA_", version: "_VERSION_", isProduct: false),
    Module("TomTomSDKTraffic", sha: "27d15f55f22ff299e4f941f90e2417aa31c6e32468c822ba5c31eaebe7add36c", version: "0.2.2884", dependencies: [
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKDynamicData", sha: "d9f10f43236906623b97a4e220479b3157db7573bc1b4aefa83761e111725e34", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "b3975d21dfce356f79598616e625024e9b8243177b9151d2ee68602765c6d198", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
    ]),
    Module("TomTomSDKStructuredSearch", sha: "4ee031c245f1522282a3041a1bb7a8646e0d608f546f3d36e7cb50b5223c6c81", version: "0.2.2884", dependencies: [
        "TomTomSDKCommon",
    ]),
]

let package = Package(
    name: "TomTomSDKCore",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: modules.products,
    dependencies: [],
    targets: modules.targets,
    swiftLanguageVersions: [.v5]
)

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
        return ModuleDependency(name: name, package: package)
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
