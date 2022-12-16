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

let sdkVersion = "0.2.3010"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "4e4674fce708cb074958128d3afaca74ad7c1ecaaf21dd485edafa34569e5b7d", version: "0.2.3010"),
    Module("TomTomSDKRoute", sha: "18dcc2265be75dc6ce448e2d5e0d4babbfcc8b82266096e74d9864632911ff09", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "1b969d250a898604fd51efd8c2ebd37c524204e8035638f5672be6581db31734", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKNetworking", sha: "7033104ce8ddb5962920d85d9e3bc9631dcbd15bc833f1f9c359704681f31dfc", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKLocationProvider", sha: "d2c56d5969f23a0e1c454784c818e141f16ddfcd8a5f6351d75c6d0b4f9ceb86", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "149717f087b3604cdb8d976102955f6a31f46c322836bb08ec5ea216c7937ad3", version: "0.2.3010", isProduct: false),
    Module("TomTomSDKMapDisplay", sha: "dc687b241a188a36741f1ec39fe9ede35b147d8d2a698e25db65cef93b8979ef", version: "0.2.3010", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKBindingFrameworkLoggingInternal",
        "TomTomSDKBindingMapDisplayEngineInternal",
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKNetworking",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKRoutePlanner", sha: "1e92ccc54228a6de85e3c8d59e38bd4026f2fbc17abd455345e3035635a4254b", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "67faee5485f22dcd6762a8620a96bcba3451609dd385f92f8a58d522c6fb858d", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoutePlanner",
        "TomTomSDKRoute",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKSearch", sha: "8f165d96e6c3cc3de822c6905bdd3f92d4ff6a39fe48abed96a8efdd4cab361f", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKSearchOnline", sha: "d08e03d33368954253fa8004a1efebd32d65964cb7d1e9c54c6b20195f4fa2db", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "0b75e225905b17db6dae992bb13ffe5ab99eb4762a352af7611a26e568d6de20", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKCommonUI", sha: "64c50c8d1dd805284ad27da29b595f1154811710f4787cccb44d79bcd77856eb", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "e8ab65be69981d18917381d7d8df2e016405beb69746c4115e4889596bac6c27", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "775edccb2d23fbdf4f05f19efae6b3de8df61c99e4c619b477292ba9e77fe4f9", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "f433de7a30da0b61a07a60296b6493475416e5d1791e3f4211f967aed063b79c", version: "0.2.3010"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "b70365a4dc1e94b63993e655e00421bbf72a3f7307216fbe43843d6c0df1f394", version: "0.2.3010"),
    Module("TomTomSDKTraffic", sha: "a4662d3e1cba8a82f9831b3730dc54e1eb7a9b1660eaec6aa6adbf34daae8edb", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKDynamicData", sha: "01f049c87876195125419adedf3308c7c284338fc96a4e43bd3eecc01d434b0f", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "72f2e09e2b18a2c40257c72fbde21df2c497c70f65f206564dfdd7606e5a6947", version: "0.2.3010", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
    ]),
    Module("TomTomSDKStructuredSearch", sha: "0fd2ea80a33f5ce8c74607fc2bc70c0f09d0150c34bb27a39cb591c0d219bb60", version: "0.2.3010", dependencies: [
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
