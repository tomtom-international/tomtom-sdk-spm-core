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

let sdkVersion = "0.55.0"

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
    Module("TomTomSDKCommon", sha: "1b80c24194790e0ef07ebd906abf18f9b176b3053b1dcbde70f7fb7c53bc0dd8", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "c43fb61a7735a70645cb1a595fb663459d5710b98b0ecf99dd0bbd0d4ea24189", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "78ab3735a4c5552633e0f5c0443ac454e0319ccc86abd2721f1848756fd44725", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "a7bea2701b7309874b2caf1832f6c04e35cac4e2b131ea078f74c96a478768b6", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "0d75f36c4be5fb0250c9354a36a834ff7f24ae404e929b376bf3634983a3d754", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "6f342073d0106e090f805e8b47fd152048ea737287a230c40e9edc6ab067cf2d", version: "0.55.0"),
    Module("TomTomSDKMapDisplay", sha: "9104b915af8c1f1d493c9e94857d85896e452c995082d06f29f2ef394dc52463", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "d0f359d7f950008a0fffcbe476d31f6cbbd09b9ae3fe2df552efbc7a9cd3f2af", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "016136e3adcfa27be9b88c8f9c280fe371b8a3fdb94cb0e4f48dd4a81246b61f", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "0c075557c794916bd2424a27ed917de08f0f7019ee1686ef4d57a2513f48a332", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "5f91d2679c21da49b72170308de4fb0e48e085d42da047e867a7acc0e82c19d8", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "bb7077ee807063b4b07fec5f415c423fc0ab0cf6f98f21dd66f8f8b7fa1c74d1", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "36a9e7d2360cb707595366a7548730d42b98f60a74e474cb75fe24b67bea7eb9", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "02dbc501630f7159255874c956170dd62c0cb35f911696747e2b91ae324a1cfe", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "0dfb504ac2e03f88df09e0ea8f2e0d65fe72b248d00e96fc97611630eea47948", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "476ac07ba037644c7269ae5f43d23280fd8e11f913bd95199c4d9c0d3e84b3be", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "53836532a699dd03aa881669a63b82518411c5f04639a1d00b6f38ae81a52e66", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "c861a13a2041fa1cd0d318a9b82f0ea6332fadbdecbcb3c1d4a6eb20e2a24b0b", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "05da816f9d9daf9624c4d5dc9bd092c00f8507dea82c84a032763de518cc35ad", version: "0.55.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "0e1cfefaf0febcd3f68531b868d2d529c1a506e46b5be233a851ff034d3ca708", version: "0.55.0"),
    Module("TomTomSDKTraffic", sha: "8f92d97715d1a662f3c8cfe68b8d9b39c54a3bdc8f43ec7f712ebb7ace180ff3", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "2defdfd8ff9e88f73d2820a1f2957f9eb53d241541a5b4927738e241af85df25", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "65e155fe916ff254b6afc13e57d09f3aa2b2f0e43277186bdb1bf51ace4d3702", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "24d384356f20499fe68c6a214f7753c53aaa89a4912683aa6dd946b19b3dac4f", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "2da760c95792ee2a92b29846f4a741db968f969bd19a10802ad3ea57bf9a5e06", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "572c21ca4340e0716d8b3398909b73878b4e431bd375fd1a0b1c4dea4616857d", version: "0.55.0"),
    Module("TomTomSDKRoutingVisualization", sha: "85b5ce6edbac628643651a86aa7bae88221ce388be0ed1a99f10db824b58fb53", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "d029f262c025a292b6622667152bee32320f11c8bb1e38f8adb0e2b52f48dc82", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKMQTT", sha: "1e7c3cc5f9d35f2606b161bba176aa70d12499a38682b3ef6d6bf39c729bec8b", version: "0.55.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "a6cf64dd4ab929df4678f040ef67536adc321efacff0393f582410fcc92ddc33", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "61f0dbd51c9b7c24c0a9c285f30f298bea8fe9985c1a2a80cdd14e1c81914080", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "9e890a114eb0b1acc0a85a2d8f6039b59ff04101b1293df8339422c218c790ea", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "13e75e289f73f9217649f14f7998f75ea6d0c3aacb85f121f50a5beaf8b6e26e", version: "0.55.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "409b3357ac46ccc99314e7b1fa613ca0b2728c4c92905531072e49611c4f7ce8", version: "0.55.0", dependencies: [
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
