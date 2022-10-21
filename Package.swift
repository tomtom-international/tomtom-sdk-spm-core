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

let sdkVersion = "0.2.2481"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "f3263817f7d16001b61120eecae8c8b3742d177a0fec3b8a10cfa07dfc8e4067", version: "0.2.2481"),
    Module("TomTomSDKRoute", sha: "92c9243a0286f646cb6df368affa7491f432b83d5eb9d442ea623c7accbb4f1c", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "2dffe9af0bd12959d9dafe77a880caf83e5bfb3f3e522d4ff0058431fe10468b", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKHTTPFramework", sha: "5b9622d7c3f954568a69e9009a0471d8e12771154f6d3d71f068dfbc807f59b3", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFrameworkHTTPInternal",
    ]),
    Module("TomTomSDKLocation", sha: "c16d65c78ce78a9072f04aba18418c3aee3aabf8e776a41c6f2e33464542a090", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKMapsDisplay", sha: "f87a74531b81aba46f4619b00fdf5f9a160adc86089535adf42dd6faecc54006", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKHTTPFramework",
        "TomTomSDKFrameworkHTTPInternal",
        "TomTomSDKLocation",
        "TomTomSDKMapsDisplayEngine",
        "TomTomSDKFrameworkLoggingInternal",
    ]),
    Module("TomTomSDKRouting", sha: "925547b9aa94d0a6b270ea59654a6cd4cced78009acb546d4216165f06a75b4a", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKOnlineRouting", sha: "e17d3d3c3e001a816694db2a2a50b106457dfa0b83eb627461c7ece2201ea1b4", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRouting",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKSearch", sha: "071ac89428e6ea9846955950e2c2a76f5979c19b7bee33565fded3457373cd5f", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineSearch", sha: "9f9ccb263548bab4af94e353449a9aeb04543756c8ff84aa0028dbaf3967b72a", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "642ce8d04a493c446ee16e5829c64160f82947f7be3bebcb7d8f41b668ff2128", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKUIComponents", sha: "1b3134d9e7559a434e599ac185cb0d846cc360c5f0e354ad18c872aec8019ab9", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "84680fd35573be720a72e434b2557fa3b0a83b0a2c353e04b15b7be04197b160", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineReverseGeocoder", sha: "f714fc442b4591374b4ac5dee646d67ca2e6df191e83e26c5e54b928d81cee90", version: "0.2.2481", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKFrameworkHTTPInternal", sha: "da1264020a9eee33ecc6376186641f5d64387e95e411ae18b3acc502a417fe6e", version: "19.8.0"),
    Module("TomTomSDKFrameworkLoggingInternal", sha: "70c533058235279478dac8a0a5497115b9995adfa749cc6e67ef6b968e3e2247", version: "19.8.0"),
    Module("TomTomSDKMapsDisplayEngine", sha: "eb2421040138f2a2b43378630b9262e1cfd688dadeb061ec41d149e62eb27395", version: "19.8.0", isProduct: false),
    Module("TomTomSDKTraffic", sha: "6b431b8eaf59a82d0999f9990c6fdca8d102e4e26369c8bd7efde0ec8ba0a523", version: "0.2.2481", dependencies: [
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
