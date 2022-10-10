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

let sdkVersion = "0.2.2314"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "5de98b107cfd498c0ce2f1bb685afdafe1c516c6f60e9aab458a310ed9904f63", version: "0.2.2314"),
    Module("TomTomSDKRoute", sha: "f474320f547dc63a9d5a1c4874f7c621575424b6c05842e410e36b8803b6d59f", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "5c46e301cce5819af25045eeec235bb6a49b4ef5e3c42e86f00267c80b061a88", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKHTTPFramework", sha: "9b07d3671c749a62bd5f52888fec5992f532bafb639ab634007dd6431aa5a828", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFrameworkHTTPInternal",
    ]),
    Module("TomTomSDKLocation", sha: "c47595f3b2d84d167e789d920e7039edb3bac026628756a19e099a680c93b7ee", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKMapsDisplay", sha: "584203b001bfd6caced425afe55c1c03f453a355ba2d4fc45f7ccd9b5c33f2b6", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKHTTPFramework",
        "TomTomSDKFrameworkHTTPInternal",
        "TomTomSDKLocation",
        "TomTomSDKMapsDisplayEngine",
        "TomTomSDKFrameworkLoggingInternal",
    ]),
    Module("TomTomSDKRouting", sha: "a4ab2e4c53ff29a4d1652d78b6152408436550a0f603955b0fdf04b61fcc2ade", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKOnlineRouting", sha: "1139b85866665912ba24c2fb3178d2f812facb2b71f70e68cdb800e95dc680db", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRouting",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKSearch", sha: "934647f1e10e73b1db0e3d584a0b1571a7f9d0cec8398e58df0555862183329a", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineSearch", sha: "c8a0957bb00a83e3aeecb6fc7ed4f575f826efd4f0a937b5e889194f1d7a9e59", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "1272d9804529de18f557d649834717343149f2bdad89e8384f9e623285249876", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKUIComponents", sha: "c8b10c925468e42252186e8924d62047ebcd74f6ca915ba41896b130ec6360ec", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "6cc2cc0cdc116b09e6444648bb30c035f52122a071a5406d1762d618e181fca2", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineReverseGeocoder", sha: "e6290978d97323b58a508ae96be2e743c4738952475a35ee8c3cad933f0570d5", version: "0.2.2314", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKFrameworkHTTPInternal", sha: "cb5c69221270a55eaebaffa6d66806d192d0b6e345a22fca52421a5d0b379627", version: "18.20.0"),
    Module("TomTomSDKFrameworkLoggingInternal", sha: "b31b6954f9bfbd7f82abd5f6e3563932a19cc82ab8fbbb8a6fa4257d71557800", version: "18.20.0"),
    Module("TomTomSDKMapsDisplayEngine", sha: "7d0ebfeb8b17cc3c65db75a0b92ed02d5447ff85a4974ec4afbe15d77c5d033d", version: "18.20.0", isProduct: false),
    Module("TomTomSDKTraffic", sha: "176e6587ba1f992ad9a2291a54b2f393101170fde9decf15c1229fca9905ecf9", version: "0.2.2314", dependencies: [
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
