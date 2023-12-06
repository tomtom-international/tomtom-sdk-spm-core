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

let sdkVersion = "0.35.0"

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
    Module("TomTomSDKCommon", sha: "b3cb4acd40834425388cdfdd87a83568bbc16e4b6ce9c77955d2baa6cc7b8ca7", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "26832bb7eea7e74d435761cdeb1f92309137fb5a350d09db626a629eb87fcbb3", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "98019b17ff4a3d84de7678bb3256b3f22068625d64950f9ed8c25fa62b04d738", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "00030a69c4d0e84c02810bac8a33cc65c1aedccd436f4ff0e0c390320b9bc39b", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "75653a02be3994322ee8ede301fdbd56c255b8cc63f601f162f37de0a3acbfc5", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "970ce82374382956a99b3fdf9c94f7f18f06701f2e80c868410cba34868c9267", version: "0.35.0"),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "4e20b6a3e30ad1d717575209921b47fdd92ffb73931f9c189d47a69af19025b2", version: "0.35.0"),
    Module("TomTomSDKMapDisplay", sha: "4bcfbeb032166fcc6af97e60e893bd3e37f81855ee5feab106fb97c2b9ea406a", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "f25d599ce5b232a8cf8f5211c943d8df3ce804b6bb9b2f2b0eae93f700f98f3a", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "f25397d3e639281a2e9716b0dc327ac20287edd3bc5ce6f9f7844e8419fe9ac3", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKPersonalData", sha: "78f699d7ce6a0cf71c899e84af45103d33cd9c5e2a40309fe4f72dd190eb23a8", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "30ed65253745ec933f6dbefa066d7d29f4e00df24b54a728ea5478a8405d4f1c", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "4c5c17d26594e74baee72a0b4d582df2ad2d186dd8612d6e0c4f9bfc42ce3567", version: "0.35.0"),
    Module("TomTomSDKSearchOnline", sha: "9518dcabeac7e09e1cc476f4b33516a99942e38ba08e80204b078aaa9b13a315", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "ded747cddedf814fe9ae91766aa68beec524f7e338517878ea939f13fa8829af", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "9b4acbf1cf9a68fd33ae6dace2dbe472e25bdadeb43599c03732c292bd3782cb", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "6340a4c824b6f6d0cc1d426101f163e20bcc430da8bf40b50cf8e415f11b8afe", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "0832a451040421173f5cae8636cda762e282cc2c18436c3b8c7407e3c61937ce", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "ae748b7053f19949745ee2f0f2b4e227d26ac1ec242330a679ced5ca0c7fe52b", version: "0.35.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "3e0a5c3b099cfb6e817821e700e4e4cc121e312190e964d0dfec904238b52da7", version: "0.35.0"),
    Module("TomTomSDKTraffic", sha: "4fe3dec175766b26e097d5e41280a0576db7ddf0abcdd35ecb2901e89674cab3", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "c0aec1c4108cf36a8144cc43db7fded34558f7f22258ba1b5ef5de00e2364fe3", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "9ba61617c34284595d564e3f26a3366fbff69c595aa4d5cd0182864f4daeb646", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "f6c86883a33e256fed8a2067c69893a5fd40d5f591239112f1fa36bcee17a2cc", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "a595486b6dd1ac63ec05ec4e46d4bbe6cf30d4aadfa42a98d7a3f0b5163824af", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "f448676ca4a70c9269bc8747cce9151da9ba4a242b5e22bd2bbe38adaa6dd6e0", version: "0.35.0"),
    Module("TomTomSDKRoutingVisualization", sha: "1198453fc6e5a770f9775fc9abce46eaea0d133e89038e7f2258c558ad96d5b3", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "ea1cfa9df2be54af0bb8140f9185e17a5f92aed9a704be92562e9e949fe26e0c", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "6d2f1133d7bd5a23b5cf80bf204e5ba1f5beafdeb8b748273986638dc7be616f", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "ca912dba144d4f590aabe142c61fa1a5efe891232393a63b08f3e85ef7ffcde5", version: "0.35.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "3739a37a10b768de45db419b54e37cf0a74d85ae1d0f4aacd288b02ced3335ce", version: "0.35.0", dependencies: [
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
