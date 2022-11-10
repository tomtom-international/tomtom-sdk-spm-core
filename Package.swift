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

let sdkVersion = "0.2.2702"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "9638a633af5eb78a1be1b94bfca776ca0f2efa8c619449a3754d421942ca8689", version: "0.2.2702"),
    Module("TomTomSDKRoute", sha: "b3eb7d6111d917bf4d988bec71535b03b4f76cbc5c26a83137074a431c0ebe7d", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "3bd65062e8a85cc7a841cf8d902a9fce63d63aa0ae89c1de808b8abded58b250", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKHTTPFramework", sha: "261432bc7e0c9057f417a27d6042b5c0fa8c59c4864da618e581f4a63cc6517a", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFrameworkHTTPInternal",
    ]),
    Module("TomTomSDKLocation", sha: "2acddd340b0b4d203b767b21d5cc55b53fa6cbc1c8d0ecd6eb4cb9a7091ed2b8", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKMapsDisplay", sha: "04f55b0e00f425237deae27096b7f781e5a72b7b3dce8b6bd9d97b8fb2e1001a", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKHTTPFramework",
        "TomTomSDKFrameworkHTTPInternal",
        "TomTomSDKLocation",
        "TomTomSDKMapsDisplayEngine",
        "TomTomSDKFrameworkLoggingInternal",
    ]),
    Module("TomTomSDKRouting", sha: "085c32ed703e1d88adb7332d57683674a77f31b5a44e66c3a73840327233691e", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKOnlineRouting", sha: "42dfe13ec19319d4b520c3c088e643b7407249419ed8cf814c2bcc8b180ee14a", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRouting",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKSearch", sha: "50e6bdc62145fca92ea3f07d2be4613190490383dc4f6f6c2392f0329d896166", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineSearch", sha: "493b21b9bdac0640e8a476b850e403e1bda21fb7d483a9079f9be0ccd7f81ab1", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "6e2720e083001b58922150c58a6b7417ec6ac5f3b68e1d065de7e2cf35c8583b", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKUIComponents", sha: "8d9d246b9e64b30c061938c0cac1e4013b16d5eff7e2aa52d29598139368ef49", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "a5bab27bb0b589f1926d6625b25b58968fd3114f6b105ae669c4a462b9c71cb0", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineReverseGeocoder", sha: "f21e3fbdf070f3995e13f9289948c446693322233295dee5460705fa7b6246ee", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKFrameworkHTTPInternal", sha: "e46934a372a0275fd278e5b8ab776f855383ceffea4045d84783536ef28b5107", version: "20.86.1"),
    Module("TomTomSDKFrameworkLoggingInternal", sha: "6f2944b79e6fdf22b89c240d69d12b4e08f1db3209dbc5c6aec491a6cfaf06fd", version: "20.86.1"),
    Module("TomTomSDKMapsDisplayEngine", sha: "281b02aeaa5026419a71bfbb18e5e010c2288fb508d8d6ab918f65c6a4d35773", version: "20.86.1", isProduct: false),
    Module("TomTomSDKTraffic", sha: "b725379cb1f1aa2f8bfbb67ec773083e9da2df2cb46396882fba32be9a14af93", version: "0.2.2702", dependencies: [
        "TomTomSDKLocation",
    ]),
    Module("TomTomSDKDynamicData", sha: "4e5497c4fc7e6aaf978a84448d5dc3513596413f5eb62771a521022501692c82", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineDynamicData", sha: "9dba0a3f75d7048d4a66ad19c1f25ca7dd8bf96326c1938f6c4a4db38592b2dd", version: "0.2.2702", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKDynamicData",
    ]),
    Module("TomTomSDKStructuredSearch", sha: "e08482cf68cddc9594fcbbb65946a0a540754016901da926a5162bd1b8714890", version: "0.2.2702", dependencies: [
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
