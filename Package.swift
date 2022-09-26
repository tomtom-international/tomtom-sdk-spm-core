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

let sdkVersion = "0.2.2163"

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "435b362995469b0c500db8042c845baf7be662793e75b04cac0c030890b319ae"),
    Module("TomTomSDKRoute", sha: "08a3fed2664dfd9f48a2f7ea232d514e0f38b6c7806879efa49d3c910c882aa9", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKFeatureToggle", sha: "4599a994ef28f7795dca9b31dbd7b34a7bc5044c50ab6ae11e4e01227f1db692", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKHTTPFramework", sha: "2711e98f440580ac363f4d02c97202bdf75a9a84bfa15759f306e752f8fe885e", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFrameworkHTTPInternal",
    ]),
    Module("TomTomSDKLocation", sha: "bc9dbdb673e3518ad26b75def48c32c070e028c9edf5cbfd5fe2be8a6d0a0ace", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKMapsDisplay", sha: "96199bea5cd0f10d387ef64a8b415af2fdbe8f9f38b10b9374505c031718cffe", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKFeatureToggle",
        "TomTomSDKHTTPFramework",
        "TomTomSDKLocation",
        "TomTomSDKMapsDisplayEngine",
        "TomTomSDKFrameworkLoggingInternal",
    ]),
    Module("TomTomSDKRouting", sha: "6a4574b5395ceb487b9f42761bafd1aa42936296a78b3b6273f62dc373f6e0b9", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKOnlineRouting", sha: "15ca2889c4a64c18507c7a171147bcd31e6982cc580b138567f61a7e130d494f", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKRouting",
        "TomTomSDKRoute",
    ]),
    Module("TomTomSDKSearch", sha: "c10a1946f610e8a06cce467f1b809b5adc9de1abaa3bb4d9dee4397d57646260", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineSearch", sha: "940af07b4074a342b9a24d2c53f7e73dca2e861af89d4505e59170947aff90f0", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKSearchUI", sha: "e83508e26b4c2b35d47fe94f8cdfa1e33341ee69a3372efca542899e526edf4d", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKSearch",
    ]),
    Module("TomTomSDKUIComponents", sha: "fd41d8392aa217b0f9a9ca89a01eb378c92a58fbd7f0d2ee37879478c39a8a3e", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "36784078cd4dbed1cdeb7a5ea44ca12570d1dbcc9efb7994b5e96d1c7739cc00", dependencies: [
        "TomTomSDKCommon",
    ]),
    Module("TomTomSDKOnlineReverseGeocoder", sha: "488cd86f9ee1935f209a9bca80eff27deb995c1bc8347f71ee7ca2abab9fd58f", dependencies: [
        "TomTomSDKCommon",
        "TomTomSDKReverseGeocoder",
    ]),
    Module("TomTomSDKFrameworkHTTPInternal", sha: "13bf31ceb153fbd4b59e01df78f32cb6ebec469f09017c5e61a584ed9ca02212", version: "17.74.0"),
    Module("TomTomSDKFrameworkLoggingInternal", sha: "5ce4e0a13399c0bb711deb9e1b834331db27636f8ba00466e85f6344066844b0", version: "17.74.0"),
    Module("TomTomSDKMapsDisplayEngine", sha: "43e150cabbc96558a5b46e797ff8ac0b9dd139cfcecac56d9d874264d1760a4b", version: "17.74.0", isProduct: false),
    Module("TomTomSDKTraffic", sha: "999dc79e877604f151977fa2899a0d07968a3f21f5bb77ca02548815192b1e14", dependencies: [
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
