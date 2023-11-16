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

let sdkVersion = "0.33.1"

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
    Module("TomTomSDKCommon", sha: "8267eefae5769b05776c8a41311cdd529581470dfd77c7bcb02c566c0afe4659", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "34f4ca545326a9b6e6c3d1c9b5da3161143ec08b67e0803e7a629799fe4c7279", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "971cfe30148d9e05f0d223ca0ac5fa6d87e8b63fa5726be141f76d4223e74995", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "d232bd63af216d37943b5651f1e80250df225b75a16062b23dcdcf30e43d7b22", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "039c3c5c3dddbb7b1f7955d23f38cf6416b673f287abc614e6762d62a633bb57", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "c5d233cc17ed26ae14ddd499a54bcf54a2f787f7b71dabc0a3c703fd1af797cf", version: "0.33.1"),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "e3ab1411174c55f6334e15ecad348e6769645b31098e25935c8da6aed4bc0c30", version: "0.33.1"),
    Module("TomTomSDKMapDisplay", sha: "79e45902ad31f7508d7aade383cd9b8eb5ba10904c6dc492231f7a1dc6950f0c", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "ec83b163ccf3b652de0c2200fc71a0c553c6c6a14d07d1c08703eef0bf5465ba", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "f28b6bfec06b2788718958ca6e4e172ded38cb3447292a887252aa385412af3e", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKPersonalData", sha: "ad7c8787d64bea8059bed50b7a917d4c285a2055faec6208509f86d97fcd3bbc", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "8eea067a1b2cceaad23a5ec0c47fbde362966ff89e3ce56f73df609210baa30d", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "48d06ef942b3d49d05181ef2d30a26a450e2cfcb8fa2b4131fdd42b22e284811", version: "0.33.1"),
    Module("TomTomSDKSearchOnline", sha: "4905549db8637b3ea7c11e5e11705e7e4f46daf372a2a7080f90b7d4bfb42398", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "bb5a6808bb224366be0f30b828db16b5b6242440a3632275c2adee17b009c934", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "ac1dd451268e7956492cb337e0d3b58c5a73806f0152fd3e4d12c29d2e169679", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "03c2f928406de00bf5242ecc572c0b480698213202d0b60ab17cbd0350f6c2da", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "3e24392966b266098ba9b81f6d3a35640a5bbae09fc9b5af635f21b4a31ae7ca", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "c7d085209449d0143d8d18fef1dcbd1f87ae69de491691de7f6c3a8566bb18d9", version: "0.33.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "125775946cbcdfb7f4d6a5238e0af067a02577b3b945775577fbb62fb4ef8786", version: "0.33.1"),
    Module("TomTomSDKTraffic", sha: "0ab4bebee0f636f4ab4fde932df4c980c0145c8bfdba164c75baeae9089700b7", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "6b17959d65f08185a6499eadc7ba83b1c1061d291a1ced74286396ea76d74827", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "e9b41429193700acc2864da7a873a882681c860006df57067e10775c7cb5e292", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "5b43664745b3b727e485f2577c68931952fa1c7e89c621b4eed4323cc59e4dd0", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "70ff6afc45d3ff9af87fa1e5f507fe7ea42d9f03f4c3008217ee271df1c94709", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "e277261d95415d0b068f54315327bc4ffe3cc49a3683aba867e3cf4d798fbf8b", version: "0.33.1"),
    Module("TomTomSDKRoutingVisualization", sha: "4e28f5f0b222da671c31432d880690c876fe83a134d77cdedf7fe5b3435dd592", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "edb22495569c50212d0db0559ef896a1c769b8da02a71e2ca26881bdba8f9147", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "7b98f2693c55222bd15d2cb2c8e3fbc9d471dac46bea8730912e5dfe3b5f8e7e", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "00601d63a3ba5020453ba1fe665594d27f57c0e85ffc4c4d4a8ec299675f7621", version: "0.33.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "b6b509f964bdea6d2990acee2dbf7affbd0bd5f536190445bcd8475cec35b09c", version: "0.33.1", dependencies: [
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
