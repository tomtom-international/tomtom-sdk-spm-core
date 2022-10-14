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

let sdkVersion = "0.2.2436"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "bd3860363a65bfe3e5823ed75cdd63560de8a607b5e6d4cfe6d7132b5b9e6921", version: "0.2.2436"),
    Module("TomTomSDKRoute", sha: "db5177eb6a8f48a8b309a1b689a7556b5bb01c93a3367b255474c87c561381f8", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "29c9ec4fd29da2ee2f1aa68d7956acb65aa757b1eca434b6507d2eb544b220f1", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKHTTPFramework", sha: "fdb5ff5f24e5ddeddff13c408516b2876355449e61afa705b3d3942a5b605a42", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFrameworkHTTPInternal",
    ]),
    Module("TomTomSDKLocation", sha: "53e3c09ac68e7363e3412667dd67cfb49be0e6e7c0a94f11cd8a88959ecf8da4", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKMapsDisplay", sha: "edb3b2adf818affd43abdc753b57f25ad23d037076ddc7b23998ade10478c49d", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKHTTPFramework",
        "TomTomSDKFrameworkHTTPInternal",
        "TomTomSDKLocation",
        "TomTomSDKMapsDisplayEngine",
        "TomTomSDKFrameworkLoggingInternal",
    ]),
    Module("TomTomSDKRouting", sha: "88af38d65207a378075060a7761245147faedd1e2ab0a1c7b579872be9dc8ad4", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKOnlineRouting", sha: "4e2566ba94f7970a45bf3d080b956a00c62a056de8e599c3e7c4bbc381bca5b8", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRouting",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKSearch", sha: "f9b1ab26ac106de24e63088ab023554f9041ab7b9697bdb39ec88e8571b1dbd5", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineSearch", sha: "013118ff95b84c3d89fe49d0906e7a969a963a102b752ce8b5400c1730fb8cf2", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "7c34af0c3da74e5dd66d29c0da087d20118c63c29d023e088c1315d7fdbbc157", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKUIComponents", sha: "6135cc82b69559b59d006140189496cf8a93d39321d0cc94c94a4daf6ade0ca9", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "079dce479a145c3ae5dbd5a859b19a8c2fbee7d16285e422bae363e1351e28cd", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineReverseGeocoder", sha: "c0f2c9e9d791a2605536c8498a11feba2134e1f8a4773b3a2a313c751f6f09eb", version: "0.2.2436", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKFrameworkHTTPInternal", sha: "148aebe393a62c3c4741e14dfa7440b4d7965b8f59879a482380e0e5e21855a2", version: "18.83.0"),
    Module("TomTomSDKFrameworkLoggingInternal", sha: "93a0fdffa12f039baa4f22ab074e3f8ba2480f3d386819ec39def6d94c891da2", version: "18.83.0"),
    Module("TomTomSDKMapsDisplayEngine", sha: "539147a3555cd468ed87e0de8a768a664e26b76ad5024e7f185bcd6d3036cbea", version: "18.83.0", isProduct: false),
    Module("TomTomSDKTraffic", sha: "734d3889e2ee2dbe97a9e8001283b24b25dec696c4fc9dfd7a0862444eb5d10d", version: "0.2.2436", dependencies: [
        "TomTomSDKLocation",
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
