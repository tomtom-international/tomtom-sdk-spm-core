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

let sdkVersion = "0.47.6"

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
    Module("TomTomSDKCommon", sha: "4ef7d3bb9feb223f3cd2d77b69d14cbb6362203ac26c0db4f4c339538a91be0f", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "3a1543268e29a98a67ecb9e396534ff1d758c3e42afcae274dccbcb5cc1884f3", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "b314e269f30e755271cb27097ab3e71afd39906409725a00851d5646e0cb27c7", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "224c23c6af6988aa81ae190dcfd277a62a7cbccf89b2948f97e50e0aaf8f351b", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "8d64bad31b362aa26bb64ea97918abaa5146f5357f8440b1ca9058475ae8f490", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "dbd1f86a8c176b38abfc4bb155c996e874d06ab4799ca3218a24f25e629cb703", version: "0.47.6"),
    Module("TomTomSDKMapDisplay", sha: "0c367650473c33c7bc9a44afe649489f1502fe0ab3b94785b8df9932fee84e74", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "fc6d8888cbdf5f8fa1efec0462ab28acf26a4b8db2a63cc59e93276c33220455", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "2a4516661e84f80b65e6234320433e3c961439f37f8d00da2bc262ce0fb0427a", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "629a735dd180368382ce430b70fd17357bf7a8d27e030c924d91a3607c8de2a4", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataOnline", sha: "a4fae9ba79bd9eb5671fd1b9e7a25a258da49a8e0de0605079893f7570bc5651", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
    ]),
    Module("TomTomSDKSearch", sha: "5c6db3c96e99aa85ce6e1cd4117462c44b29ebdbc77a531f9bf65ef2140dffe0", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "570c34bc9706d1ca283ecff4b4a466c0915f39fbdacddeb82646fa3c23f0f918", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "8e4d59ab84af910c1879d3aefc7df89932f0f486e4504f91964705d460751da8", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "b51d7215c00339ac79330e519c8e3d660954febe5fc359a2a2cf8e8f3e22eb2e", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "8980d3bb938da3b138764732119f792b3ba02edce5da28ef4e94da70a1967204", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "e1eb5bc5824fde412cde2685b3fbaec808ec452723b4339c2c96ae469c084694", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "55fe99e3534fff0cb813e8be2e1486feeba71f514921589f28d731c51cdea2da", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "48f2078c1dd68bb97024c49c8bf51e9611fc858a9680cd57ddb05b87192c11fe", version: "0.47.6"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "7baa7ff47086b7cb3ee24bcf8633e38a0f069973a15db979a04f52249e414c0e", version: "0.47.6"),
    Module("TomTomSDKTraffic", sha: "35bc227b6b9bd9e74dd0287bd5dc1fccb06ef345a5eee083046feea590f08ad3", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "3fd4e20478be5342fbc216df252834d5be0bef0969aa6d2380790f5ccf88be94", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "0b668f7447390294ec0598756a2db0c880b41a900af6ef0a97dee5dd211eb68d", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "2dd577e5632030687ab9da5e2a8c626483b6bab5be385f4abe2f67e6cd43f457", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "6a07e1332d0dbd9212e773e82308ba4b48cc8a7a1ce8161b5875e707ad34b510", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "f5b44841adb6da7f07425ab9c43a3ca94dac767610bb8bb43dcb5b9655289d10", version: "0.47.6"),
    Module("TomTomSDKRoutingVisualization", sha: "5a2ef32b8b538813510c7b7c1d44be6649cde79f4603740f55e5af63538ffe4c", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "cae92d7f770f08bbe480bc4fb65481e07dd33312ba07f409830a1dcbfe1937ab", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "dd47831cff01f950cd5faa990587f64ab14d699868157ad0670db1364b0f6306", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "565d9bb0c1d8cf367e7e6027f9f47517ed8c9590cd90e25218731e75afd1bdfd", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "2185fac3765a9af1bf4cc3fad915fb884d50f3a7da50337aa760a3be6d412a30", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "12fa79531aac2eda051c13c57fbf15bfa3e45e971f9ae73c3c266f969381cb07", version: "0.47.6", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "8d59788d6dcf4e1f2beeb43d9518bec943bc48ae0b3c48d6a1db8b795ef80bc5", version: "0.47.6", dependencies: [
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
