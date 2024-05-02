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

let sdkVersion = "0.44.2"

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
    Module("TomTomSDKCommon", sha: "66a7c6ed04e27423bcffe46d231bf5457c63a11e8e972e53342a7cc9d1018531", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "45e6ee36bed5abc2f66507b7c7f137da186579c42fda2055c9916ea1821dd024", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "3f08e90c502b093b5da66b71d743eadfa1231dddf391c0407dac75dbf6381341", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "6fd8bf2792573f4aa74dc72d636346df3b1b77bdf086a8e147d00a68328f755b", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "046d365ff99508b242df44d352d7cbdeffdbe9493b730d7c9a622b6336b0e23c", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "04dacd9b7fa38c8a64ac69d6afba4f396bc16ed42aa9b871fe1c97195579b5f1", version: "0.44.2"),
    Module("TomTomSDKMapDisplay", sha: "1aa0855405fd825034cdfb8d9c72fcf924d9e6e7f1172a048666b63c8921b1e5", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "e2dbe59768a87640f5dee84e173ed80139379d0c56485ec7edd09868b6061509", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "1c6e9af6b5cc4cbc647fc650c52d0f6b6ff439c8bfc4b5ba2c38b5b874d43d6a", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "c80b7dc5fc6b57d7f3e70ba63dcfaa7f31c56ee57ac4cd40a53da43128d2e61b", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "4dd26f672b9ec680e6485a56b532b25c31ba7f35cbbac1d87c3a520f68869958", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "61d5df7ede1a29be0aa86238d982ca221c46524af5a31335f231f3a2b7cb913c", version: "0.44.2"),
    Module("TomTomSDKSearchOnline", sha: "92a7ff8430f4dce30e0ed14f5b3357234878c2c51c132c2de6287726b082753e", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "3f3192b745640656ae0fefbe3472ec6146f1400f7f6e855caea36d833bc41860", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "c42a8a3428f533fe27e3eb87edc431505366213185f805002c4eb731226e0101", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "dce74a46acacc96acf5347e65583f6736cf852d65f1f4b8f93fef6380e14135c", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "133e6968ac720d00986ef4a8e246471bb4023ec9fa1c22c9bd3843c6aac65f19", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "18685c2b3f70e03980cacadec5d9cc46300e8160d59cc157ada3c9bbb487a6ec", version: "0.44.2"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "2cebab7f582d6a407aab3a77aae5fdc34a1b33f3681f4d0607e167eb9402a8bc", version: "0.44.2"),
    Module("TomTomSDKTraffic", sha: "827b7c7b0fb39b9466c1e15b5928539e86e72b8ce63a7880094d3aeb19b959f3", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "ec69b37097694c7c79cdf034e80352dbe8f3184c4eef103b2bb1847c51f1bca5", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "8b5a425304d60370fe963bd6361b95e212cad144816a57156adb1fcb3dca0f1f", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "951f16444687dfb9b3a8de88752d226d524b4787e6f0056d0dbe169daec6c610", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "f0c49773364fa231ef9b821ed46e40213a83caf35d64079e5ae634f7739610ea", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "0774ee31cf7acb8dee88833be1201d6c172a685c5bab723c32328b9537d13ba4", version: "0.44.2"),
    Module("TomTomSDKRoutingVisualization", sha: "1903b60b3c403901d854a108b6c5484c710691153d7f1a3c112fc8484144bd88", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "9ac2124aca357727725bf8a6bec9dbf225a3b82b8dfdb468991172a819dda350", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "0a27963139bdf50a14d933b8e6f18600b21b5b74e36b54100644d4c5644831d7", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "5f32f7f3097608d44b9bb05be856430f9458506918cbf2b20eaba4ab6e9b43d8", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "68d84e167e90f70f80fecf98cc2f11eeb6136ba2840d21583efbe503f3a4ff97", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "3c8eb125849a8d960b837d448495eb29fbe3b187a0f345e306c4ecb03724ad8c", version: "0.44.2", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "6faed495fb7c897dfa3500683bc8d8777a6887d51b5cafa145c6c515e48a614e", version: "0.44.2", dependencies: [
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
