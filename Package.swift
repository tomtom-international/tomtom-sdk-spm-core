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

let sdkVersion = "0.38.0"

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
    Module("TomTomSDKCommon", sha: "7fb5e190566e37f84b8b1e69018293b4ad609ec64ddcaa5872280fe4ede70d1b", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "137eac24fe571ca584c06ead976088db3328c9cde556307fe4d0c06d33ce5489", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "fc1765a3ef009896d1bd293236942b56b83aafb6b8c0f8560255bd8bf1dd80b0", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "d033b504537e4048d6ef329440b04b3d9d6059d5cf16d1633267c9119a95e31d", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "81f6fb4419170b6728f9621ed5d0f6fae800be4fe67d7ac582bccba91fcf0ab4", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "f1589aa4e084478a79fb15ca9235150068799bdf0f1ead3417dd8beac52b3667", version: "0.38.0"),
    Module("TomTomSDKMapDisplay", sha: "6a46b66128bba72253b5e2fadabc20c51c8af071ce1c6dda3df70b0f10a23aaa", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKNetworking"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "73a1c7c1fe1ffe0b2d28cb2efff5632d5e537605fa62d629732bea28305b4a16", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "5ba8bc85245d84ae2aa4014fa3d02e632039d78dd280d3ddee682eefe31e7e37", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKPersonalData", sha: "939d1a1616c5381628b2e3d0ad3f65e7f3ebf1a430641a34438a870884498f1e", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "25955e9f01ad20931dd7a9aa88145699a1e0a3299ae49c6cbe9e2ed4118abb82", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "4bd4aeb4be810bcc99a19bdf69b554f5dcad5bd15c7ca68c9a23a0500b7d1a4c", version: "0.38.0"),
    Module("TomTomSDKSearchOnline", sha: "0e2d326ff69479e244d55f66fedce1619b90c152259fb4fc3afe89c4a8ef831b", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "ea60bf45b77687c80dc6357d5778d26b47609bf6993c8952b56be82cf7e379fa", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "2ea090084204c146669074b311a01c535544805aa633b43c1eef059229cda063", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "38cebe136b96a5883734b06a258df4d837ccc8129ff0934e249e96146f2f2460", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "7721f192af2b3851865c77bfeecfeeeb5dc82159079c92a392cc61dd79a7d65d", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "c514a56ab47abad90a5bc9fc1b048ce38a071428d76412072939000fa482de2c", version: "0.38.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "98b8380c0218dc3494d29fab2d2be761f4dd7c35b646abe646faa9cee6971fc7", version: "0.38.0"),
    Module("TomTomSDKTraffic", sha: "4d6a0541c23dc80edcbdfc2f6ce69b79b4373a1cc9d9aaf473ab957cfffcea30", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "435b4f877599ffec1374bcee57ad208a204901ba69f4328d29cb67dc410ef478", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "307cec71b9431b8833de0c7fde977f1a5391378f8fe39546d0da9c5c8a6a9031", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
    ]),
    Module("TomTomSDKVehicle", sha: "55158f793af40a624e032cd4aecac197d7937aa16a21d6a4c4c799f32b06daf5", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "86c6242e1f4205a05ecfbdb1d3c2a8e41f8a9fa1bad62d77eabfbed0313455a9", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "fc6b8f0e73ab49b1531c9295f020147acd761cc3507b74ae4a5ed6b479ff0906", version: "0.38.0"),
    Module("TomTomSDKRoutingVisualization", sha: "a1571310d0354d49f7c3c62218c8bc6aff8e2036b423e4491ce9f41a40cc7628", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "5859f91a8134f8f4bd8afa2f6673a13017230500d15f305e47376b89b0d960f3", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "be8ce493156561a3d1e6d05a1be27d4bd511fb5dddb3536777bc3ed4e0b1b5c8", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "0deab88e0756d290f3bd181094305bd90dc2099a35d7d9a072b2b4614dee6baf", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "2a1c454d23536441d09186bd6d37626afa7c651caa80bf64fff0e190909ebaba", version: "0.38.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "4b695ded8932aee4a58ab0fd9adffce79bb6327ed92228a0a0fdb4c634060820", version: "0.38.0", dependencies: [
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
