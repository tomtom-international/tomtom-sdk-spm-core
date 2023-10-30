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

let sdkVersion = "0.31.0"

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
    Module("TomTomSDKCommon", sha: "58bb7482a454e81f1caef60bc0c48a89d75e95d48459d665d76b20f31131b137", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "368c3882815581dfa448569b2923123258fea8db57ab477bdf8ef9376d92f2c3", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "2a7e9aa24ee2533847babe9657eb3270a2bb7c7dd3f7720a8cc13a46878853f2", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "4f94423f5e6467bebb2526580dc7bd404905f6384575cf7b4d4a3fbb33dd5139", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "15083bb54789bb83e0ab2a2d03879e616725500ea69e2dfe84c133117797ba59", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayElasticDataProviderInternal", sha: "b5e482db078024f36484542abb3399cde2d2af9222008ee83cd993d227e8a1a5", version: "0.31.0"),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "c6aeb6a64dba3682f025891e9de480faec168b4d49aed08485ea4dca98ce326c", version: "0.31.0"),
    Module("TomTomSDKMapDisplay", sha: "50b8e6f5ae1305cd113f30344f99fc1b4c597911ef05074616a2d6ffcb79acb0", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayElasticDataProviderInternal"),
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "1fd305cf62b6c40ba6661165be297e75907689a6c934bb652eedbd46aa0e8b61", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "8d16c4fb9204243254c72e66f0ebf57ff01ef1781851c6c2e9fc9cb04ce27685", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKPersonalData", sha: "b51f9675c47c6932b6e0a9234b2d607d5c1b9bf147c093438c8cfd105da84b59", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "1ffeba1fee0d8076e9a22cef26dd7c05f8a75f51b461aa1942914de25baec892", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "547243353f76263fc3db25d16933426babcb08b20e1d2fd891d2c2f0d4610aba", version: "0.31.0"),
    Module("TomTomSDKSearchOnline", sha: "6e1736bb8b2380aaeb7c314901f9747b063e4770a26cc68b63813bdaa8e30466", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "c0cf859185efdd50f1ec12f894c26aed3f91f70c14d62114c4acbdfae3e6def2", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "25638bd96811b35fe7d59bbc84ef5a45701cd7cb626cc0ef634063d20d9f839f", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "f7aa7ba828d3130162a7da8b1c5698e902a62531489f758f9a8c2a95ad7a2f87", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "b2d83bd2e74e65c38b7aff4269eca49bd5eaf7d476dca14df1aee3c0217d544d", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "f06623db751db6faf46f919084ea530d22aa843014d3ab52ddf924f3cbf14f67", version: "0.31.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "7c043aa9090652097bb21a7ed2ad7c9c1b988da8eb640b4ecaf491ffc6a36fda", version: "0.31.0"),
    Module("TomTomSDKTraffic", sha: "86a08f7ef50c5e8d32c082fec5dd0a1dade12723bb74a091c76ecae6646a5ab5", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "9e4bbf5c25bba2e2d2499dff80692c76ca390af08a2e12b6d3d96bd7cc0f070c", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "ecad9e0be95b3a27e8a44cf810200351a3b9d41076eb81b98b00a224c747efc5", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "376aa92a6e5e7cfde499d21eec3c696f066f2ad6d1facb9f3a61846e095dc085", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "7f3258d66f246b2ff26158472e58363d8587074b9a4e6724e910664166d195cf", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "2dbe730fe7aa05abe8308630d691dd890b66442d5e04017144b4e140f550369c", version: "0.31.0"),
    Module("TomTomSDKRoutingVisualization", sha: "f45b6e5605c6418960a361979ecd22e3d9d59ee6c0f4c76114b372e2b1dbfe77", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "7edf0d74fb4d3c692d6c29cf3fdc11a6e87a3d6a58bc6c56a42a22cee2ed8baa", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "87e525b7a1cc416417747930e24d326aeb410fe886e779f42020e0512b993d6d", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "300cec63bca580a9e76883ea03b520431178790d12abfb33acf2f59c243b2797", version: "0.31.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
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
