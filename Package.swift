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

let sdkVersion = "0.37.0"

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
    Module("TomTomSDKCommon", sha: "823cd8074150c8d477c8c88f61f5981eaf093e06b6afcfd3909d37649a85068b", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "d7c3ab81b1304c378dff95df495baea796c09bc69e860c38d3cca340842065b7", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "5e3eeb2365b805c11a198e45c33f1c038e169944d9d16f2b5fed8a796ae56d53", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "eea91fdafb178be99affab7045c622b7c8bbd7a8f708db6f9369d7ded87469ff", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "15459a962064b726bfc3d1dc255a69b58771e796804c70637f081e6c973e0539", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "e02abc43ab32eefcf162bb1c4db9e30c4091592188f4967a33bec14cf8a7d75b", version: "0.37.0"),
    Module("TomTomSDKMapDisplay", sha: "9289c0f05e2c4ff20dff4ffdae849763cfd2c28fd33e41869daed40dfc3d7a50", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "9c74bd00475519d50750f845bc4261fbb0739232580d64a2649c7af06cb56166", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "c47e02abd67005d28daf19c285d31b8244bbfa00564a93881f02ebd7bb836fd2", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKPersonalData", sha: "22d75203080626bafe2cacc0dc663ab36c6f957d8650411efa892f77318780c7", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "c53d7efbe540a72928d4ae5b498541f2eb22a69405f5db83536518cab43233f7", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "fd4f1e64cfd3725ccb850d8ce01937409f4745f0e2751da75a06606257666bcd", version: "0.37.0"),
    Module("TomTomSDKSearchOnline", sha: "1b95db6157b7425e244f5f1223c49511e9c5189b17ac7854b37a248c7af27def", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "bc6a591cfb6624164e60f5199ac77902c96618d2a445463c881229696f15433d", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "6b17904fdff7835ce650ca0e72df2bee1c1203cb1579d30e9c9933006cc68d0b", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "ad2ce1f1b6cbee6f1aab9708ec2f55e1437d13fcb855d2753cbc7412493f7cf2", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "f5b710315911d43bd470f271d27a0b30d65517910e76130e5e811e264e311a99", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "384efe92adfb38e5827db13e51894482c3d6b89ca5d05eaa4a1689671d964543", version: "0.37.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "2c69916d408dfcedb5bf964b6e1d533cce52ad863daa1b2f01750a7e83d9fef5", version: "0.37.0"),
    Module("TomTomSDKTraffic", sha: "e6112c2e6a606a6ffb8bc9542364ab1928b892a55a5f7fc354775e7e2285e625", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "b746d21edf6927f9a4b4b542a7b9666c39510ae4a6b7b7b8a1f0a404fd1c0da2", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "250ae9200186b7fd648623ebb445dc7359cdb699614ac3bb7ec4deaa6780abcc", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "ee741598c813b2f376d0f0a94ebd20384b279c118923c0b6bc660c08af9cd650", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "c7ae55d8b020e5af22c45fe5ee1ab0c086f00951938f57fe937f53613171121f", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "3228bf044c0138d7107a87ef194298bc0afd1efc8fee8c59fc5bad50fac7dcb5", version: "0.37.0"),
    Module("TomTomSDKRoutingVisualization", sha: "48d35e06a3b9284759dbc014b74c267acb5e70ed8fcfe15da849652d65ef2983", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "8354934f206241976c3c211b7acd2857ccb281189ce5bac623f8f4c6e448a715", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "2cc90da59abe15fef9e2b13f047501a2a3c8d09f4ed26ca380d69f6c0a27b479", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "be62811d566f95b8c146f46d1fe278c4350a4f4ae2dedefc14542e3ed1bda158", version: "0.37.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "25812dbad404b4532249a180d78874b0f6e4af90ec2c3019c355014e1c5a5de8", version: "0.37.0", dependencies: [
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
