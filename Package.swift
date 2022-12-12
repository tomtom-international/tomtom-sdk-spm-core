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

let sdkVersion = "0.2.2929"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "a3117ff8f4f0130b59042740435ccd1643f399f02c780fe1d24a4f04c597a585", version: "0.2.2929"),
    Module("TomTomSDKRoute", sha: "360bc10cf08af9371dd5ddd2ebebdc02228c447829ab9ed43225ac8badbeb2c0", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "79f88328681dd2317078d3e11b02435ca32331a578d205ef8c7cabcd23669c53", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKNetworking", sha: "71b7937611d9b7cb1c829b2bc877affa642807b6327ee19cdb334589d831a3d5", version: "0.2.2929", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKLocationProvider", sha: "3377d89e019185e7c10c06f6eed2d0ee74e1288db2ce3279a86e1f029515b7a7", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "e4951d7dcf77a8c83dd8ea804c3691868ef950fda743db1cdb9c4682f3d15278", version: "0.2.2929", isProduct: false),
    Module("TomTomSDKMapDisplay", sha: "ed9892abd818ff93c07c04541b9829cab9f26ca0e9079faf228cecdc4ae44e72", version: "0.2.2929", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKBindingFrameworkLoggingInternal",
        "TomTomSDKBindingMapDisplayEngineInternal",
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKNetworking",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKRoutePlanner", sha: "7ab98769d9605b0a401f5cf3ad7e3f55640b613f6ba1f7e47029713bed3d4c3c", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "28716918e643c78b97ae1186e7f27d4ae5dff94f0101604cd0246f7b318c31e4", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoutePlanner",
        "TomTomSDKRoute",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKSearch", sha: "78589a320be3b258fbaddec81259fbb6eab7b13a458b02303f4fba421fef49e2", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKSearchOnline", sha: "18e2c81ae2cf2c14aae4d7bd0e3cf7c7d70cc1f08442117b9a3d2a72bb59df9b", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "c402ef80943b2aa700b0589fe3a50ab64462101076403856789c04c4c94a0077", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKCommonUI", sha: "deeab248b19418eecbf1b09334b1fad2e3d96b437f1d2002af8b7cf7d9b308df", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "d579e98a8cbb03ce481770caa05916fe4f733082b32aea50657c9b9dbed8bbc2", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "35997a248af8626f3ef07b8b75c5d50dea94da83dce81e5e06b970bbf7f2dd94", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "f268d06743cfa15c026baa97bd32d6dd5e62727a0cc2b9a22bb2f1a140b5bfda", version: "0.2.2929"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "8200ca2a17d7f6fc4a76beba1504be951e617d3e9faf34ffdf39c3acfeca8c96", version: "0.2.2929"),
    Module("TomTomSDKTraffic", sha: "eec1054cae1dc35ed7f179384a42d2ba63f25bc0c761059aef5f1c7b315efb39", version: "0.2.2929", dependencies: [
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKDynamicData", sha: "24fe155b26b4f0983ff6901a747523aa543405a0c38046bca9df4e81b15afbe4", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "bc0b4950d2bffa2d63982100b3e3f675263d5e00306533356eeb34235acd56ed", version: "0.2.2929", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
    ]),
    Module("TomTomSDKStructuredSearch", sha: "a3c7f2dc16382713f9e62750c7aaf679e64f28570f3714b7acee3b12b7c10fce", version: "0.2.2929", dependencies: [
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
