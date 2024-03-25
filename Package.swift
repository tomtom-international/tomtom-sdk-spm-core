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

let sdkVersion = "0.44.1"

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
    Module("TomTomSDKCommon", sha: "4ee91c9f70a3db572654bcb309a694e62b802121f785675d942a869046da821b", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "ba4288f24105e1c7228ec75f38b397a68c72c5899bd5d99e8615e14b61137d80", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "a4c4f4bed98e91aed4c5ace47e65aa44261e7394edbb94bf57e5ad5af372d99d", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "add8feb47ad995accbd2cd452cc6315a1aa28998ce2083b1e70fb3e52d2d6b71", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "3245f50cdd19fde1e24ac6c112651cbb2aea00a4fa54779ed065a958e48beca0", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "d0ced5dd03bc0468d7145613c0720e451aac75c2b321150a83514ce5e749ac2d", version: "0.44.1"),
    Module("TomTomSDKMapDisplay", sha: "9b6daf0d11a2429601c4b84c228c2285c3c537d7203e660eef65e7144f64cb9d", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "5817ce62e6aa471832e5cbdcf5cdc9c28bafb65f44f3f828255ce63d210bd974", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "c68530f8378eee6214447e77cdd499fbc73875107a997f260c4f27a3c13289c0", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "8efa73d40d8390235a1cc4e8a5fb7f2eb381dae315811a3f7b146a5af182861a", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "a0647009d9681e1d4dbd232ea3ca8db95c41f06c83451441ecfc1f4580653667", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "4ea889677a604685fdcbbedd688afe4eb221a5fa540a2ef3a32d527ee17fca08", version: "0.44.1"),
    Module("TomTomSDKSearchOnline", sha: "d6f3819be23acb939ebd1f41e25978613ebc3d0db3bbab67bfe7fc42d9ba173c", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "3622bb143b386276b535119f4b3e5a5b2870d09027f56aca0b778fa3172c7ce2", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "793fbda032f08481100a210810989a22d60c501cc9d2f4ad9f2395c9be531299", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "fd62b731f0ac96e2ec2befb738409bb982700994375a23ab80867cd859ddbf51", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "2a24f3f270d181967b70ad1cf56a5fc333f625e55f991015fccc07523a7e1b76", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "aed257a24911f6a20f9231d5f76d98d3c8c65ca80f552d8b05d99ff1235f6aa5", version: "0.44.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "d08392170c977ccbdbb1354886ad1f1a23d52ca3f0db8805e120bca74aa6c8f1", version: "0.44.1"),
    Module("TomTomSDKTraffic", sha: "f870eccbcc4735b21615cc38781b75a072ea7726b28cab2612665d754c6ee7a8", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "091c552e68c5ea9dfa3f9123cf409415e7d2a131e1753432ea46773077aa7df5", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "8f87a15661bbc31654c75efa0fd7c0b25604e2fb1b08a5d9e1bbd5f3d024e158", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "bc462cff27c205a8d3c24ec8c7c5bd7be7f2afe67e86164ed5a0502d4c324329", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "3db787d53525f838e2412deb17f615954a1e7a1f5dc0574f35982f991287dc10", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "0579fd891782cab41e5e971d97927e2ff51eb77f18924f49b2442171ff061c36", version: "0.44.1"),
    Module("TomTomSDKRoutingVisualization", sha: "857cfd0bbdb8421579db532111cec3585d45670f6c6cf5b84c8168a5748e075f", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "3a34a4cc4e4cea53cf7e23da0ce108292c7c1dc847390c414df6fd17d4dd9997", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "04dee5156f1c2903e6e26e430a7f0ea0f918ff3fba6247de7cedb5d46b7d59f5", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "b4442bc62975f45ad6588a60b5d0327c95d11670dd8d26a821a377a93233d8f2", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "654d7a08dad23b0eebb236460654188977ba6c9a2f7b5ea758543955ab08a5d3", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "2a0069120d523208319d59c89eb88c4cd927f9ebfa72042af35c33ba2ebc8ad5", version: "0.44.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "989ad8a4c6f0220e0e864cc95bb466f5951ec4c45f7abd38aee884e25db7e95b", version: "0.44.1", dependencies: [
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
