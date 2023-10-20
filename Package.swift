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

let sdkVersion = "0.30.0"

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
    Module("TomTomSDKCommon", sha: "1010aab081c415904f051290b528e5966eb618eb0bf7edfbbbdc90524d22525d", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "09ed36b9f72d69f387dfb393f62cfeeadffa25d227e7c185d115546a7762d2e9", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "ff00b378774d0107f42c39f790f750c20ee168dcda34a74713494ad512630d8f", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "84ca27ffbba8bacdab5be4e98e3ee4b7fad8d596705428902b19e286fc7dc43d", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "8815da3d611c5eeb57dd0ba0cca3d4ee9cf02e5e3cab2d8adc5c444d7934e695", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "de3f3296f177a4e8d4519b61fd16229c866cec07ee9992dbca0c98c35a8c0efd", version: "0.30.0"),
    Module("TomTomSDKMapDisplay", sha: "cb827fef0ba02d7649bfe3a05ff74ae9919e4816c74eebb4ab723186d8b963bd", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "f2ebad5259a3871fd1a48f7217a5cedfc30aa42cf57c0c2af3ab905f103a0775", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "16c6c8ac436568eb7a9146d39b9289a99066352a51d306467b2701358d023a82", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKPersonalData", sha: "67cd9f5792c269389b9c324cd6b15383dcd4b530f6eeb068ffb2d55b6c9a21f4", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "72efc9ca8fb1fc47534fc307a02b7bbb1696c273c090a27f866945cd45684e74", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "58b0110877fb884b9cfe223107cb67ec4616b5216222399d6302851507514df7", version: "0.30.0"),
    Module("TomTomSDKSearchOnline", sha: "7ffd247b24447404edecdb487b7df8f3fbb4125e7261c7cf50ef529d9e0f8fac", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "a66a49339ea41047c62904d27f5b187495c59baaea9846879d15a530f6aef0f8", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "369712e4c6a366e63944e45be5e8e76f505ba39d2e15af4b34fe43c76bb29c77", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "3c9082622735b77b7ffc331eaf36adce3f73fda239fbd5dd95e3a08340b00b94", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "c61f90d652c1f2a6c88a299b3c3d18e430e64954c8781331a591d58ebfd1eed4", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "9f94e913bfcbcba57f275649c895ec5fdf880e98ad5e9cc609751df2630268ba", version: "0.30.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "a575674e4296e6075c26e9e5e586e7aa5ae575afb5b8443a708d9cbfee95fe64", version: "0.30.0"),
    Module("TomTomSDKTraffic", sha: "54b6a2a93b7ed2b9f18db639175d3346bd804ad169d739c895a1fca8b3fc7028", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "17f629707723600a971c4c74f569d82e1b9a5f209954add8e239fc348c74bd72", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "385f3d6dea5eef80bb85103a75a718a033b7800ff3a8bd0b8abf7ef7b0ebba77", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "55d82ee31eba89ea7542538d0e830fbe75047c722e8e36dce2bf54b54c4587a5", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "11707dcdba1e9f91241ab9e9936b7f205e8ec42573c76158fb498e07f56d3d1b", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "42638ad28a26531eb6bd3745ed6da6583bd4885cc38276923dd206a6f3a1326b", version: "0.30.0"),
    Module("TomTomSDKRoutingVisualization", sha: "0e4bc70e98e2a130d373f0dc0930c9004f714be4cd4318b6b6e10c72d697d9ef", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "19b85da52ca7a0262ed94d00c5019d9d4c781ee101b23c52ddd39e5e48008550", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "6aadd21441c7e871e463cd83e61b98a26078015b7547ea4ca5f73f632f28413d", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "7d4d0de68030abd65de562ee61697fd4d7b906a4a1575ae26f490b69aa89e1e3", version: "0.30.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
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
