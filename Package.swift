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

let sdkVersion = "0.2.2581"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "e0431a9e58821fcce03f7231caa6b1e4a15a58d1f76d6ae1129974425bc449e9", version: "0.2.2581"),
    Module("TomTomSDKRoute", sha: "b8730be11f8ef42b5babae6c2b80e474a503cf0a7217108643e690d9b9865302", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "8998f27fd57bb466f2c2df09576ca349ebf5183cf4002a4d23be5e1ae1c0ed80", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKHTTPFramework", sha: "15c77ed99bf923d2b766437cdd044675adeb68eeb0954a1d547f98fe208fb3ce", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFrameworkHTTPInternal",
    ]),
    Module("TomTomSDKLocation", sha: "7436ce05395f56ba9ad53ebc5d1af83d5b6e7ab09755c6fdc4938b0b7264eee7", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKMapsDisplay", sha: "e76d96fe1c88f188251c17a7ce257c71099eb2dc4894cbcb908382fd2bbf00c9", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKHTTPFramework",
        "TomTomSDKFrameworkHTTPInternal",
        "TomTomSDKLocation",
        "TomTomSDKMapsDisplayEngine",
        "TomTomSDKFrameworkLoggingInternal",
    ]),
    Module("TomTomSDKRouting", sha: "abbb09eb76df813f46f5980b0d549feb6d183c62620ea1edee99a1b8ae867418", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKOnlineRouting", sha: "bd9ccdac329aeea23d616190039f508b5db7045badb22156e5266b3e392a7914", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRouting",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKSearch", sha: "6cf492051daa8ae09b67cb474da7d94d0b45ceef51ea775876ce53ced8e5511f", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineSearch", sha: "627723ea7cd8f746d1a6f52fd77aafc0a09f071faa9296e7dd48555018ee020e", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "cd0abf617114d14f3fba347a21ee47fb9120070bf6bfb0ed9667e2f5b888445b", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKUIComponents", sha: "bd2bbfbf363051f34ed79ce78295c07a34a82685ffbe99dc9f798a5b505b003b", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "428bc366cd9db38fce3f4655585fabefb2a1b3ccad5366641605300ccffb7135", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineReverseGeocoder", sha: "9d2938c1d404cfd5268738a7ec470792357671d9de9ef30b0f203e42bf176ff3", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKFrameworkHTTPInternal", sha: "78007f381fe758c7733311dbc4d2639db6c5f668085bcc558e150b348dc364b8", version: "20.7.0"),
    Module("TomTomSDKFrameworkLoggingInternal", sha: "3e74a759ab4e121e005d858a12fd587c3405200de98eed797eda5fdf74558130", version: "20.7.0"),
    Module("TomTomSDKMapsDisplayEngine", sha: "78d93ab4e758eced96f72116c6d378f1f5ba989c35ad5624b2a5ab782f6dbacb", version: "20.7.0", isProduct: false),
    Module("TomTomSDKTraffic", sha: "1b70520cc456dbbe7754b2e3498babaf830ca6352db700e3c5575fd71f06c70f", version: "0.2.2581", dependencies: [
        "TomTomSDKLocation",
    ]),
    Module("TomTomSDKDynamicData", sha: "897efd1ec7b4b8055ab87acf622a21f6bc2e742b66fdffb8865f4d9b86989083", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineDynamicData", sha: "b80376b113e06e23b8d3ceeea4a9a8115d8fa6c2758624ccbb47d645cd3166c2", version: "0.2.2581", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
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
