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

let sdkVersion = "0.2.2822"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "b2c7d291977202ebb85421b15ce2029cb8d567196feca46d2ee3564fb8c77e7c", version: "0.2.2822"),
    Module("TomTomSDKRoute", sha: "da5492e6476698474bb6ec44a004bc190f9d11d5be142109b9083f0d3240a8b9", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "30bf8216b4f09a415f81b52f9d9e12517e6dde0d95653e0dea51f04eaa1e8f03", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKNetworking", sha: "7af9faad630d05d4fc13c4ec2fa9e705cc06c73863b9bc0b2f4128f218fe28fe", version: "0.2.2822", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKLocationProvider", sha: "031950ee07a24abcd9114560c47f505efe6c8a937a54eea8ae78d9994917678f", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "97d1d9f20c5c6fe70c6a43dd2a285202dee4f4fc42edda6c808f51828a87ef35", version: "0.2.2822"),
    Module("TomTomSDKMapDisplay", sha: "9f6c0eacd60bdac4adfe3790fe86517ab9e3a3fab2453dc74a406b74d3b8d25f", version: "0.2.2822", dependencies: [
        "TomTomSDKBindingFrameworkHTTPInternal",
        "TomTomSDKBindingFrameworkLoggingInternal",
        "TomTomSDKBindingMapDisplayEngineInternal",
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKNetworking",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKRoutePlanner", sha: "b238250dd3d0b86c7aa2cd2057a0d1691ca090c90070e6d796bf3f3517ffa903", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "91012a4ed32ce2bca090129d6a90f8d72c5fe37b6af6cc0b9513153332a1da50", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoutePlanner",
        "TomTomSDKRoute",
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKSearch", sha: "e72e3e99df00424a92f70aa59eafa4ecc3ce9ca5ab52bc3d3ee513b560c0b765", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKSearchOnline", sha: "f401f87461c1cdb73a6461ca468b49bf6d7348c020817ae3b0b8dc1b9b9e763c", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "26ed530a6bef68d558fee2fa472b85401bb4e855076c353ceacda402738543e8", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKCommonUI", sha: "9d38728d868c22e6a3349d18768b2df8d18c0d2cf07c0bd8c14e5a180aea1e90", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "958e182680e620ad4389dbcf8d021543eaf95096bb5682bebcd15120ceb3a20e", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "fb63ca40a6377b4d5fd20b010b8b88584613a381b3f54b59c61d9ad90978d17e", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "10ed2c75ef5e225f3b2d498528fae2f1462e656a397c3f92908c6c125a17b901", version: "0.2.2822"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "a8675571cdc9bae0f538793b09c0e672bfaf7f6d7a617875a1f5d067fe9ded4f", version: "0.2.2822"),
    Module("TomTomSDKMapsDisplayEngine", sha: "_SHA_", version: "_VERSION_", isProduct: false),
    Module("TomTomSDKTraffic", sha: "318d17377f8d2b4c5b5a3c22274ea1377e0d2b509647fb634a7f29848b99d29c", version: "0.2.2822", dependencies: [
        "TomTomSDKLocationProvider",
    ]),
    Module("TomTomSDKDynamicData", sha: "4b7498b50de914029bca0d8aaa224358eef04fd9acba8f6b04a6643af4a13652", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "c4cb3e616ccd4c9f42453a951bf7ac3bfaeb4c30fde34a00bf1c92b8b6064669", version: "0.2.2822", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
    ]),
    Module("TomTomSDKStructuredSearch", sha: "b41c960427e49b9e48381b5d208d3873c5e45afe4b88965fd899c53dbe8df6e5", version: "0.2.2822", dependencies: [
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
