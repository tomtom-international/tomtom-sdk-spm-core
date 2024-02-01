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

let sdkVersion = "0.38.1"

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
    Module("TomTomSDKCommon", sha: "a6376e0a30049cbedabec25147098f86b668a3c4979b671bb329e0ddac58473a", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "f29e45938b9b33c56506efe2290426d41e038f1feb034419d58903656e10fd23", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "37626804522b9aab7806b00a6bb675bf8f2dcb41a04fc3e4cbc9b4e554aac107", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "79c344c8c829fe3dddf92f84df2dfec672eb603a927e6e266870ff238fe90feb", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "bc90a0784f330c3fcef45b747a551e2e0735020c9170bc90973e462cc3b0279d", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "cbecd78028a1868e43984d97a8e0095a50a32962278ea82cb38f6880c047ac7e", version: "0.38.1"),
    Module("TomTomSDKMapDisplay", sha: "d2dd4e162a0f77df04375b9fd60afde31540f75c8fa84cad00e2948c200a051f", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "bcb92ad4884a02b7901b3f9612c8086fcd207464173a384b7d5a43e97cd769b0", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "6e3274ceb078f31747207ff57616d7be67babebc326d0264d8cca9e8e3fc9d09", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKPersonalData", sha: "f7a555748098045a4a839728e24dac58a13f2b2888c5e3243e403d394d832c10", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "dac4c8da70cb3c8bcd4f21722f0211dc550e0a57dd53bb486383903e9df1c04e", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "002d60b813c752cf707c5bb851ecda90c73b1d1486bfab41c21c31d053ed0d1a", version: "0.38.1"),
    Module("TomTomSDKSearchOnline", sha: "3208d4b3db57c34d9ab0e992d24da142c89822e2269e2b88a916aa2ab2146355", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "99b552b504dc5f3b2b77322f40dc76dc74ecd612d78c88655e75f7de9b72179b", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "4645898c26e5135de85956978ae385e4572f9a3626c540eaefede8a36147973b", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "bc8fd52a84d4cd7f72cc2f3812c0650c5e115b7d349345784ad0d9ecc8420926", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "d5581aeadea4c9356177d8658944ff84843b67bad1412a5368ae866b424c2e7c", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "a4cff1e6fa39bc3033d6f80081d472c5318ae64b2e11a8f0b9785115b3d32d2a", version: "0.38.1"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "00d79761e7e9d84b81e15365eeabd90b4aa84f9a6e40281dc4182ce3f25241b0", version: "0.38.1"),
    Module("TomTomSDKTraffic", sha: "481a326380753310949516728eddc4a1cec6a8360a7fba0c852863ca51bdd706", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "105e79264dfdee382c132d4b8cfc88fc399d47dc879711bf843f02756c38c027", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "f638606b67029fc27b4d0bce0eb96542b05e09cf41015d94f59ce53530047c0a", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "e2046c366d0b53021337e3002a312446096399cc3b0ce646909b43e1a877ef09", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "8bae8197e291b2272dac7692fc931b7a0eb3cc73e975b4dd890e20205f65ee8c", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "a464aeeb580899178e05d5b6c4fae935e479ebe5edf3c7162a094b647d0de94c", version: "0.38.1"),
    Module("TomTomSDKRoutingVisualization", sha: "95d53b52835b78a57075aaeedb46d96777a41d445db8d03ced92a03507814be0", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "7035dc88cb9296f2b14607feca08c6f22683b7a1071e7d1eca3d2a3a655218d2", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "eb6a8d122dd068f83f944d6ace4d2ec01f2ca6998d551d8f901da9d9fd989d3b", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "5506e6d10f521599412d7a1cf55c5467fa45f2564dbe319da5f99fe533ce1480", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "594b56b96a568c243355a63d2cacbe68781aae7c881aa793c8afcea9db399bf4", version: "0.38.1", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "f00e3ef889284f71e3a6ff102090d4b84f2c4bad6c60f01b0cb7fc9fbf2c921c", version: "0.38.1", dependencies: [
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
