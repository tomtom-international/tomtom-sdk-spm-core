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

let sdkVersion = "0.36.0"

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
    Module("TomTomSDKCommon", sha: "582d8b88d80a1cd187f124e7f5aadfccfa7559b0a40804c63a4bbcb79d7f4b96", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "03780d1d02f46d62d6afdcf773a182f273b0000030357dfc32b79c93f0c67475", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "26eca7d6089490cadeb9089debbb229b92298304f480b95160d13008ea2e672c", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "2e5fc3f6ec4a3c67799c5614c290f0a231e306d67b22ecc451530994843b8f36", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "7e978c5e8e74efb9874fa98818ba31cc75bd49905c6a912061d4c1be725869f5", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "5d31eb17b1349e1f16e953175bc70983f61b25203406c8116c7688a4d55847da", version: "0.36.0"),
    Module("TomTomSDKMapDisplay", sha: "423d4ec67b75ed40a82657bf7973953cf80a844bcff272dc5235368ad04ca6a6", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "c1dd25e16d22082a4fda49483f0bba5742de5076bb7cae73ac19662bb198065a", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "15f0cdf8cb586fb86b70ff60cacc271687747ab00bd85b4ffd75fb7285d4d67f", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKPersonalData", sha: "90d4ca1d60478bf5b64d4b51bc4e00ad9a252b249370258e3e1fbe09bcbd6b7b", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "aa567f59357b88ad7f73d4bb0f57f6a3f575e69418fd4007d8242ce8b39fd9fb", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "9fc1ddcfc8387fa7d62116bf1225fc81e62887212e37ced34ce4668e6a1b4dc8", version: "0.36.0"),
    Module("TomTomSDKSearchOnline", sha: "cec8f24c888d1c7c1bae7b7509d9178144fd34533bbaa7eb745afe76648880b1", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "fe5896d32ce08d5dedb0221efcf31e208f31c1cdf653360ef90b1c45874df600", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "e07dff41f3a23f23cbc09a15d5871ec0899d842341fd5a33dfb8b68f157e8727", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "ea44da19d1f3b103f6d4224b2b0a12fb7ada74e2835c1d9af851780c0f1f8388", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "1c94c488ae90f1ba16153eff08023e766f363b4b31cf4b4c77bbf5bb9d61d70a", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "12507a288df1ddea1caac431187153d1897cb621537003dde4150c746bd84760", version: "0.36.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "cf50dd05ad7d14c3a328ea6b3baddaf86fa610ba47c297326fd5935873f506cc", version: "0.36.0"),
    Module("TomTomSDKTraffic", sha: "efe035a12cfe50f4c4ba290cac85a7224b873af6d8f614ba03f05a11d32f6c62", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "0e14f481db2885724ccd785119179bbbecf495cb4f723615b869d85f9c51b21b", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "26a4a0a08e6fd54a58583d943d8651575d2281385a2d8c8b6c68575d8d05c235", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "01b4cf440d873f982e6eebc837226ab972c7c8b87ff49af3a31dd2369f48a8aa", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "8da20afc38fe77332f7c414815d95cf41b504e46084a7f08e052cfd357c9dddb", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "2a20b886de9c606542e6fe59bbf682c5f5c3e5cb6d1012525d3b45352307a915", version: "0.36.0"),
    Module("TomTomSDKRoutingVisualization", sha: "59b9fbab1c1c971db3291661502972ae3dacf4915517dbb0055c474da6e89b9f", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "639fac874c529e7f51e34f98dff3ecd6d224f70c2431397e95f3e53e96da37b8", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "b80783fea617f740877cc3f97aa0d4c2cf285d9707dd43f5d7602e5f791a2d3c", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "2b825ea418a45822bc9c4b0e76c40f275d6cb6eeb5eef7324deae38b98e218cf", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "26f1104a3fdec2511f09cf99146bea31909edea2e8466f96afd9a25dcd311362", version: "0.36.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
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
