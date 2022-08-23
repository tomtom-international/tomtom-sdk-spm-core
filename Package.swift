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

let sdkVersion = "0.2.1869"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "30bc94510550fd00d60e215a4cba4a410cfa538b49c9146f229805e3c6c2b2e9"),
    Module("TomTomSDKRoute", sha: "e11bf6a696fa37e6bbf254ce60c020d2a91dcd87818b26edf40035d1a90ffb61", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "ba6ca6a5b65c686251ad8db6ee7b136acdf2a17acdcdb253a5aef68162d00c91", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKHTTPFramework", sha: "30ffd2291ad1b340b211047c11958ab1ed039a8243cb2c2c0c64467ec215b063", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFrameworkHTTPInternal",
    ]),
    Module("TomTomSDKLocation", sha: "0a67a3cc055730dba5b84e8ff782f9400a6b642d98ad8064d6a2f23d58725f43", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKMapsDisplay", sha: "4176ec53c6e6995fb0fb71e83e2d1f1e682388572419adc8bde505d66ffd9958", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKHTTPFramework",
        "TomTomSDKLocation",
        "TomTomSDKMapsDisplayEngine",
        "TomTomSDKFrameworkLoggingInternal",
    ]),
    Module("TomTomSDKRouting", sha: "1d8a94d6ce2d38f3ffeb1144cccf8cb378cb02ea0f7f4eda20ad4bd26c8976ef", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKOnlineRouting", sha: "ebc7e983c85668259d1baffb9d0ffe1064abd855d1a1006dadcb42c57cba0bf3", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRouting",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKSearch", sha: "5ada21c14e521177639628e789583de19bee03a8b412ceee74d0534762355954", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineSearch", sha: "8e90dcfe2038d843a6123c89b437f2510746c99564b59bdfd09e2919068ccdd3", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "136c004ec44bd547defd8998497c877b52a719fcdfdb64ac6ea12be8a8c3a15b", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKUIComponents", sha: "572d30703ca6256eba46bb4032964c17a870e4c8008cef03cb7971cc8fd3fb3b", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "23634d422c55292926b3571317bd94f716997c9d4ce786b88c524da3214a652b", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineReverseGeocoder", sha: "392c8c405fca1b06c62266e2d09e345285570670421d919d70883130107d3e05", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKFrameworkHTTPInternal", sha: "58b125e1124835b318095606eea771c36ca3fae7d26c85cf3d98e8fe9c537fbb", version: "12.10.0"),
    Module("TomTomSDKFrameworkLoggingInternal", sha: "6c95fe46e941f4323866ca3956ea4b0c8f2e93efa4f078bfeafa3a0cfd90e57d", version: "12.10.0"),
    Module("TomTomSDKMapsDisplayEngine", sha: "161029190b00542b80d72a9dfeed7abf4c0a8010dcdf8c62068a9b8247fee12e", version: "12.10.0", isProduct: false),
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
        "https://repositories.tomtom.com/artifactory/sdk-cocoapods/\(self)/\(version)/\(self).zip"
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

    init(_ frameworkName: String, sha: String, version: String = sdkVersion, isProduct: Bool = true, dependencies: [ModuleDependency] = []) {
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
