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

let sdkVersion = "0.2.2746"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "fc9c87350e9b3fec9f83bc70ea8cda72ec14fc89a24bcb0599677a8a06338643", version: "0.2.2746"),
    Module("TomTomSDKRoute", sha: "44488dafbbd3f9695e005b57f74c8335af39adc62acddf97e6a23fa12d329958", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "f37f46e9081d4db125e0ab6098e70590e37527e0290c5db0e12068aae5e39ebb", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKNetworking", sha: "c2ab76ba0b52fe38affd6ab3d20438fd4ecbb824eddb1bf9729f709923400514", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFrameworkHTTPInternal",
    ]),
    Module("TomTomSDKLocationProvider", sha: "a6f50a56e5c0aa69b18f3c7e954521ed663b4a143156993b1297587db73c44fd", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKMapDisplay", sha: "aa261e1b75c78d97c73a99858dd287ae6829cc78f2fc0735a7fcf226226e081b", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKNetworking",
        "TomTomSDKFrameworkHTTPInternal",
        "TomTomSDKLocationProvider",
        "TomTomSDKMapsDisplayEngine",
        "TomTomSDKFrameworkLoggingInternal",
    ]),
    Module("TomTomSDKRoutePlanner", sha: "f633a85bafc9b3310b5a0db12a7abd63861f566efc6a839ceb22c67ad68e9c53", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "7937235464ea491be19efa5b0284ff579afab5c9f6bea0fa3d77019a548dd8e3", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoutePlanner",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKSearch", sha: "aa57943a6c54ebb9f933d109a6483a0ef1e1c03a9c33fe10a89e0e6b2008b1c9", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKSearchOnline", sha: "23083731bd2feb7d446bf9ad933006a45de0cd4b9f45bd223315883fce72e89b", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "ee3c3446e5ba7ea01b59c8c9242ced0c4977519265a2bf5cd85465133f3685a4", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKCommonUI", sha: "ea2595c4bad5a76fd8381bba7103b1718b1e4bf8d40e0a1b83f74e38de2e63b9", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "7eb14aa120c96665b5ac60fc0a122c48aecc0af3ab2ae6d96e774dfd1d99c48a", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "7603611cf08d608a8b8c41341d7755b1d78f972dc7a1c8aa109c86f95a7b8a0b", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKFrameworkHTTPInternal", sha: "90287a2bc80f1d30392c3653ae63bf73f154baaf11dad8b72388c8c7d2ca65f2", version: "22.6.0"),
    Module("TomTomSDKFrameworkLoggingInternal", sha: "81b68ed6fd72eca2192ba150f00a4413459d3c48f1a6a8b45f267e9a4c76b655", version: "22.6.0"),
    Module("TomTomSDKMapsDisplayEngine", sha: "fde5c1902c3cfdde0ff9e7ccdc3442ee8f6f0b1a1d54884b95a0f831304a6174", version: "22.6.0", isProduct: false),
    Module("TomTomSDKTraffic", sha: "f798a7dcb7317e90567fb1b964514961a9a5e35b947220eec3d064f35245afc3", version: "0.2.2746", dependencies: [
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKDynamicData", sha: "e65d1d3d59150a564f86b11fec16764709b0b5d278fbff56f0d97c772e7721f3", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "61350896ba694e505773904d5c6fdb583117f95f6d59bf6aa0bb7d789c02718f", version: "0.2.2746", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
    ]),
    Module("TomTomSDKStructuredSearch", sha: "519f8bf1fe615d6b29f40e1b1017b7e0b3f56dbe2bbee0114006f22a8f581d63", version: "0.2.2746", dependencies: [
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
