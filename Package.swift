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

let sdkVersion = "0.57.0"

let package = Package(
    name: "TomTomSDKCoreFrameworks",
    defaultLocalization: "en",
    platforms: [.iOS(.v14)],
    products: [ /* products are set later */ ],
    dependencies: [],
    targets: [ /* targets are set later */ ],
    swiftLanguageVersions: [.v5]
)

let modules: [Module] = [
    Module("TomTomSDKCommon", sha: "df2ce93cc23ad7ed7dd94ea97831bf18db032cdc5bea315fbe20e8eba231d0ea", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "8db4971aa6e8ba3b85d6ec794d6078d8d205aba4eb07b3a6d07229f1997b28ae", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "32191f45961e085cc5ae0c4b4ffc05d6b7731eab3cd14266346fe7cc0abe1d7a", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "4c76575df08c118ba24ea7a36406701057e5f6e03cc8fd56dbb04cc06abcf2b2", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "be98d784a79325ecbb7d1e86f0338b5db438852d52313ccf78f37d29a24baf1c", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "a434304ba2260ff0d21e4db55fe94c2a7d4b6e32f2544395249482890937a9b0", version: "0.57.0"),
    Module("TomTomSDKMapDisplay", sha: "c61f0ddea668484453e28361595e783bce5b442fdd05c11335910ae9494f9441", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "81ff2b84db86299a45339b39b8876e73bd4d4d34c02d6dcf305ebf175374f54a", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "e141dfdb3482cbcdde3f226bf48f0b3fd78ffad468ecdce4e5bf6c7c9dc3cb04", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "de1d2a80a2a14900fd37903223ee71d26f4b351d064603183b93307dd3ea1c7e", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "adc9b53291a96a56ec3331a14f324aabe0e187018d4294290b8827cbfb9e525f", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "7b7fbee45cdb0fe9bb3beb71d6f8ddec8a68e35f767d5db9cf8eaa70b5b13ba4", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "4703c8e754d5ff450bccf9049bf18272206b19e1d3a7de065060cf17439198aa", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "f8c06b70604e06b5901cc81b34b964f58acbaaba8ae0a11b0cea6256e47609bc", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "269f2f05b86ca091f80e20f75f1c23d7d297ed842caba043060c656523754c99", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "2e95ef43928e7e2f1abc4a46f901ddfedafceb666a3a7403b2b693eace72410c", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "687c77477f2fce61c7f297276806b4bdf996d4e5524cd246044eb62860951843", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "88e814d93f1325aa55f0ac07251a74a67de675c762c8e894b52544408921adf9", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "61b20761fcc0587d780b0578692899b6262314186741ac2725e62e0e89a19563", version: "0.57.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "882e9b81ad3f014e2ce91463c1ecb4ac1a95c6d3fe42111ad418d9f837856b5d", version: "0.57.0"),
    Module("TomTomSDKTraffic", sha: "2d2b4cd35e33556b3a397f837627eeff4bbfe54add0919033852eafe24fb9c21", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "340789018bfa1ce865b90c79bdc93e2e3ce04eca2a638710394e81a4421fc7bc", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "fb9c852ce14e88f0497e536d42a112091c020838b54c49e5a96aa5334c491e27", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "81ea660c14f56574b84e80c5bda38189c3a3f449517a9f81c277a4393fa3db6c", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "e1857a8d3e415f3e2707c5f4e0d8517c064b9bc4d9a2a940cb0d67cb8b31b545", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "5b9871f543147003a0ec8e3c4af1fc529f593337152c6978c0c2517204c80939", version: "0.57.0"),
    Module("TomTomSDKRoutingVisualization", sha: "78c8110bd1a72ed2d4d6cd0b92c11e6715a0b72f133d52eb9b454a00f08644c6", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "fa58ef15ab04b9177dc259bb20dcef256d0fb05351f6301b29da153587346b98", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "9d127c24d9f84accb40a9bb2d4316dd0dd3a58dcda092f85ccaddb7933978f49", version: "0.57.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "4fb36b8df5be6ff836f19d0e60badd353b86ee29f59bdd42d33425e05adde50d", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "4c3d2c549b6ee305cd7d20f85231ee0debea150d9061ff3dbaeccc654264ad31", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "c28ed3b679c96ac56b3d249b2a685fa3b40fb5a0ccb9e3ff344f5b989e6d8456", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "2a87beeb64a9aca817935bda7cef9258564450c398896face2e11a703e4eb0b5", version: "0.57.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "ef7acf17ff9a60c795c127c4b1d83b1fe6694226131e4aa738068771ac56a544", version: "0.57.0", dependencies: [
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
