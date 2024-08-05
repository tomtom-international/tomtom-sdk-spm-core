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

let sdkVersion = "0.56.0"

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
    Module("TomTomSDKCommon", sha: "810570e88fcf3dc3314f4286caa9246ef82410b145314ebc68cbb310c1ebfcaf", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "562654d5fa4fa45f5f5a87b5c8cdb0aff9e8eed92413c39c537126a8a31b481a", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "0e45fb672692f644fe53bfa75ed1f2e602328204976ee600fc7574713edea774", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "ad8d27db72c14bd11890218bf68c095120fd64a8722c38b9cce960ea7716c752", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "12ac21e7d676844a0936ab3a8e83a34fe61dea0efa8169dbdfe2710fc7639a5e", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "4c9d146ba5cf354f791d4d68ef44137bc495858911bf068920395171ab7d179e", version: "0.56.0"),
    Module("TomTomSDKMapDisplay", sha: "3db07df4b5df76c6f1645bd91500668eb5f4fdbf1bbbc2d6fdbad09194a7db63", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "253a8dd087a37b0f9c8f6a8a08ecd5f27cf6d31e0b22c6761dba7ff89b545fd6", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "cbaf59460a22bbca28c3ea7197512c1c6cc6cc803b0ef64ba5451aadf97a9294", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "14c3be5cea5af2120ccc4e952205778703db87e4ba6bb07bfb6c30066e0be173", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "e75aac492a7441725c1b2434cf30cb9b84b933bc0adae8d30b5ad2d96cdcc80c", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "1f0d8570296fd89b89af2096a116bdbfc0cb7c24a87374d69156a91d40fba0de", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "506be0d69b5bdffd750aa758008466baf84a12e6ed45120179754f210253201c", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "f912400a31ff46491a2553eb47e15b7e5c957778334e44dd16465dd6af9f8409", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "2d08b55e93a453967209e12c3ce35927105d8c46a1ae16b3212a227c36b74ace", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "042a72788aae348bf66d894cea82c5c5d4d376acd3dab8ff3f006e8d9594dfc7", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "a64dba810b003931c2689141abe30a60d47cc8de458a27be08831b790ce4f6c0", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "0053b2a5d05ae0c0d5d2695acec8f7afcf8b0043abd404aae16269b22c530a64", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "4372022cd5e5fef4741f8cc770f7cca0ebfc2b0dab3db1f234d060d428ee3d19", version: "0.56.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "b438ab7e74ca0288e27a9fa1d1f43689bc8c50a26d1bcc6a72af97356b926584", version: "0.56.0"),
    Module("TomTomSDKTraffic", sha: "c3d4fa73f80fa93441f2dea3a672881532cf047606600ba6ce53cb958250fc92", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "2398bba568f7d0a95f6e4e6e44c041d08068420c5cdf77022dd8f0082880b1fd", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "8a7e55665db8bd51a6660ec50378394edc531da1ab814d08c10f40a1e5731225", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "649ab007944a4fa9ed35e1f6ccba6f5a3a13e05d02464277d5e23005062c52a0", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "8fbdd4808fb98bc15ae84e4940a5c332e668f2d19d3b634fe760aa794b0b717a", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "78d30995ab70719f6d7ca297b4130fb56a37bbe8f403f5c7d2d4026212b231ed", version: "0.56.0"),
    Module("TomTomSDKRoutingVisualization", sha: "c20a1034f83c9c70cc45cb6700200f167c14426bed7b22a9f3ff495ecf15c3fe", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "78266eaf2035d6018eba8ec03b7278cb80e67e06c88bce318aaab9002cc4f4cd", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "c946ba5ef6cada412ac7a7db61c34341eddcbb2974a0a8b50844e2ce2b1a6e43", version: "0.56.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "36317750fea56c894c24e8f22cc8b810631abcfc66bbcc93e1e60e5379f8bd02", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "5a76021caf1f86f36b10ece6ccf27cf8cd26d400c151d75707af2c08a58f8a80", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "47c231d37fb9b9f594c5f9008307e8bc34235877e98f7ba7ce108ed2bd878b64", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "87cc8210aaa4aa7fab709b5e57ceec7fde39b25302144ac3deb7529a59ec5277", version: "0.56.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "ee59764668f7450509ce36c1471ef885bc4c5da3c707fbaf8306bb7d3fb03b1a", version: "0.56.0", dependencies: [
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
