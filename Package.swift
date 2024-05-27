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

let sdkVersion = "0.49.0"

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
    Module("TomTomSDKCommon", sha: "84a73ca6451ce1d21c63265ece19cf352232e3ed44f462c321514e6e30088ab5", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "2fcd560056e257ba3ce8f4a6b21d5b7ef7d6c1d06b8303077850949f0f4ba574", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "85d5909c2a4866b0cd176ca5ecbf8c85462a54dc98a84787cf48b724d5fc4a33", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "82eb30d4817fae622231a584d509ab6aa205954ef3f17e34fa62bbf5e693c90b", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "ef3c51f6015e3b7e073914df36e7e4df3bb1ce836d910127afbfb34284ea6dcd", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "c9e2dd84741d2b546a725902d8b3885954dc63250f46ef7a61dbb3da4e9b65c5", version: "0.49.0"),
    Module("TomTomSDKMapDisplay", sha: "9b37789aaaa9be9aabbdd8e898893de6a88da3ff7c7de0225c1935f2bf00db35", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "3f170d9c98e2fc2db28ce460fcfdfd814868b6e48181d4489ca091ee42676f1d", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "57fa69cbf34267f9bfa09ea2f82fe4ef5ac9f16562b5f25a70a79d485cc70b57", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "881a74340af1e4ddbda4032045fb7968fb24dd61d5c640341e75ba9d1d7695b0", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "0120ffbd9aa7589d86dbc6d13e715117f998e1b8632ed88c72529b1b088aa88c", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "c14c5bb91db6a0301c5b235c5108270fed197ecdc0f95246724b3421aa4c16a7", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "8a2d3742dc54f3f3906f0032cec3bad499996b820c38cbab5ed4a2d93340578f", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "9ede65e6b332a0b2cf98c10630ab71ee79ad0c09bfa32cba43c2d2fbde131a2d", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "d3436b426473023bf58f9ee0c423eb146442c466d21b6826663e87d212fa4e8f", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "6f54e4b4749c3b1d96e9fcfc71927c6fd2be05557d3e05a7de0a7483eaf09cac", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "1df8200f706263dc175fdab44bd36ea92938aa19014c3558e31b0ebd35f7a266", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "8ee61c9dbff12bc2212a1e37b4dd4ee0ae52b2fb8f9b1e687a8b3f44d10448d0", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "ae0ace4be7620635822e01132d85682723efaff804d153bc4b2132f96249800c", version: "0.49.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "b04cd13234ae76ccbf439de247d812758a5dfd964efab1d4dabdc2a4ab46b80e", version: "0.49.0"),
    Module("TomTomSDKTraffic", sha: "d6a3c8d5b5fae08a8d24805b36f9d7a4fea3d9c0055e235c5def7ea5b4f2d9b4", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "c5eb80e0a6075e5d9aced7ad21ae46f0577b4f52c6127cc80c2492b468eb0a1f", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "4d13285ff9cc62360b451c928721b3e91f8acd0a5e518f01dd95d53537974fc6", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "660c4d9e3a5ad0ce40829e6e7c0912372b2a2dda42a4a388ba988628675fcb58", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "267ee4ed662c9db6473d2787f2745a40df8e3dbc45f96dc59910f8ad58b97511", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "cca2f94621833fc1176f127cab9729ac068a9138280d57d24908a0b2aa24673e", version: "0.49.0"),
    Module("TomTomSDKRoutingVisualization", sha: "5a3d52515d039f9cdcab2728797b49664f6d00ba877b3174905b966fbbf59a08", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "37d5921fb9c98f4b0c9f4138f31f932ccea31ddb5cbdb2e3248eb8aea8381ea2", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "b47ce11d81a06ba1443bcd397d97c8fb342c3c92b302f464638b8350d047c5b9", version: "0.49.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "d19eee713b4844305729c35ca428e6798d1f0891dc94e0700fef254f58cacc25", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "0bde1ba923daa65ea5ce41ae0e1533cced83a998e8036da9b40b20eef971a523", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "cd27ef994631b7a57ee6c9e2d7be14afc07249bc579dece05707b4fee27f52c3", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "72028c2674657653ed973cc227e563b67160837a91eb195fc361da8c5b880a17", version: "0.49.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "8cc3c935f95066573b9b5a4b4bb76c0364aa511762c2a191fa59b18564e2d59d", version: "0.49.0", dependencies: [
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
