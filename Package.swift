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

let sdkVersion = "0.39.1"

let package = Package(
    name: "TomTomSDKCoreFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [ /* products are set later */ ],
    dependencies: [],
    targets: [ /* targets are set later */ ],
    swiftLanguageVersions: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "9aab8bdf1536d08735317d200ed78574ca594a30e95c677414d9b1a65dc1cd9f", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "93a505abc8ed0b58848445d434a2d5a98aed58e3ba314da69b2a121ac2042897", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "5c48b6cfbdd7ccec12d3e2d4800ff2a7b289d53ff00e72051e7b4c66da429350", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "8fdd7a547402f1128660655f2aa6791053fbb59e9edc07e6d6c547175847789e", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "ad889ad6677ec50b5b8acba47dc0e01803088156382d9a31428b16fb91f786b7", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "b1eed393c35cc8b02a813884a3c97f902cebe62c673053847c31d0f10a5d868b", version: "0.39.1"),
    Module("TomTomSDKMapDisplay", sha: "2e958d7b163d81f460996dc963e918d8bf8192d4988038113cfe87e791ac68fc", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "4b964ff6387b7313a198475a3ba1f5c82ce023231a0d6b1d21f81652914904b9", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "d1a665c6e355e55cd0009922cbd2d75d2669330e1f2069a86f2c135ba842942f", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "2d3f6de075d5ffc26a8c11e43e456b6a3cdd128549ec7a71361bb15cbb6f3095", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "2d4db4979b5fdeb564f3514a398a255d08a8c420a5249609ef33a11bab20dc90", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "a28998eb9de6a388954090fd90b5be1702f16fa0a24c81d5473aa9d11944b9a5", version: "0.39.1"),
    Module("TomTomSDKSearchOnline", sha: "49127dce2749aaf25c03ccb4e83b596f0dcebf46e7eae1c3bd8b9072b282c979", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "45bcdfa4e474af6bae9214fe81f8b9a97bb812892ed9eea8052c5a824c515cb4", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "c0898d1d098ec53096c95b76a8137de067cc8f6cc00905333a201867c49a3711", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "7a7b142a054fd6e814f68962d5b1306b45507e540b93d615bd26e0e3586b6f32", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "3694e3d2151a6e4d2a92d11fa8ae2c462f974db7fc7f3bf9dbceb5ee92e8f21d", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "60be418f669409ceb95bfc78d9c9abf87f51a14ec3dcde89786959f342344d36", version: "0.39.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "9104c9300f6a724ab8357205a776a7a360c755a67537815d743005fe98d18f6d", version: "0.39.1"),
    Module("TomTomSDKTraffic", sha: "26a9e879c4561670feb72139a279f235cd3ac97c2fc575149240a94e68f37479", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "c6db17f4e0447277d6624fd1aa705f3ffd99a6951edc0f185b060f913989c30d", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "2082b975bbbeeb293105757ed65cf2b1dc973d423df98aac6e86cd52214c68e9", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "579b4473f95e70b2b6e816a95345a83e25f9ce17169ab43687556301a3cfd71c", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "0865ab7e47a76be0011d8730c5268b4e569dbc5e47ab70e4b06a1b9b014aaf73", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "c0aa8f279ecb5dea80ad95443c1b6b795d01447c8adcb4e3d580f4a7c2b2c040", version: "0.39.1"),
    Module("TomTomSDKRoutingVisualization", sha: "d5d6d081ffe18eaf10ad560ff9b04956a1b33085cd7d60fb02b3a8159b916027", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "d94bf74c5c58984ae1d58e159868ce2ac8cd3274c7dc905bc3b817637ffe654a", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "106ad17d4e58c202064987a8985b8bc6a71977ec82dfc60043efdc349e16ee37", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "e43bc0abe2cf517a94a5010c5930a81768f8f4f7dbc67ecbb7ff311acdf7e547", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "0b44b6446f62849099a8a255c3f51cd39cf457b879795a7244746896684a8379", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "6d8298b23097194e5bc706eca7b0124bda9979ec2e115e805cfe9c462b0db10b", version: "0.39.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
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

    static func packageDependency(_ name: String, package: String) -> ModuleDependency {
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
