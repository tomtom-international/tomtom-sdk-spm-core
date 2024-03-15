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

let sdkVersion = "0.43.0"

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
    Module("TomTomSDKCommon", sha: "65e7756bbb7f010cd977e99148b4b793c37d27e7f474faf1ba1250d4d7e3d601", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "b958507a0ed48ff06f3cc9fe77c51ed8c8185f41de01bb8ce4fb1d2f25b6a850", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "11acf71be7769595ba62a6312c4036cfe3767b3b3c8d43914bf8206bc9a8c34d", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "d9b337854178410395bd01b341990a72d46c3ad1449518809399d4004e48deb7", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "ade06787cdc52aade42470536289e49b767f3de9b86a226a780adffa8ac5e126", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "fdb38a635a2f4ffd46fb0c02e6553b4f12d7f8e5f34287dcfde9f078651f2123", version: "0.43.0"),
    Module("TomTomSDKMapDisplay", sha: "4cccc5164b91d932f84c2ac21aa238226f8300dcdb6a353b4644e1ce14a53902", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "13392147bbd10c30a7dd3fdb9002a8a966ad17a1897d840056d1a372df2b18d2", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "78c64363772baa94b5e708db38cb24cbe567b82cadf6fb892cde91031b56c1f4", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "2a82f851761d004ae48d95e3f0c56f411b580c9d01761f4a6a05301b9c7a6504", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearch", sha: "de3a6da041b0207b4eab808e832eb2601aa6457f55032ec998b17816103e126e", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "2958b4248d36836a91ae906f4348bc555069bfc9405df8afab97214f4a2a4117", version: "0.43.0"),
    Module("TomTomSDKSearchOnline", sha: "47d77ed6dc6b78f52c00357b54e50c4c0f8692f4c398918d7559cd110c8199e4", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "7d4869d70212e13096f3a142b5e6bdae32c10bcac827e3a5518bde2007b950bb", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "77d016c6beba5d5bc08703afbcf47d07e459166942467192361a0f4a49ba4208", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "b2848b074b7c78ffd28dc756b9bb011c98250eb59c54889d1f27d11d4a07dba0", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "88028940953baddf4bd4f2bb4e65e0f71f10a44f0f3fa5bdc62f92233299df2e", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "c413dea22acbdcbb24a8001efdf0c9f14ca7fb9f71ae93b669b4f94bc512b831", version: "0.43.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "bf38851fcb2bde5ae6a967d2ac86b9cfd31d8a7a52af8d9c1cce5d50a0fae4d2", version: "0.43.0"),
    Module("TomTomSDKTraffic", sha: "8721b59e8de965d855af793d6c962b5e1114b568842a866e6edbb20caf57d268", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "5e87fb5c1b3793d9df405167c8ba697bf3799aaee3b607462d6d0fb81ddc25cc", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "9d32b113574cadfca6302908dc11721eeed3ef9d1fb3212fcb1d7506bc0e6554", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "8623c62591840fb89c4d3f674871110dd7a866c3cc315188e8322ad840f24586", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "7e64a852b15731fe4b12a644481e33b2116153131355fb5137384d2337fce5ac", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "caf4e418b7da5b1d8990aaf513f702e979766a718343920ca3710dd53cee24f5", version: "0.43.0"),
    Module("TomTomSDKRoutingVisualization", sha: "af2aa2b9284ecc007cc162528ebcd678f2b32daa57479533a9f8474d12f1da41", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "d70e2615affd29ee8dcca93851f85efb4e337884a2298e80b238bc38dacaa549", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKPOIVisualization"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "1dba8a141e50f39a8acef6aaed0f108bad4c957747ceed75b7f6aab4b4e478b2", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "f7b7d0c55fada4dedffaf04cb666d414903c75efda617dd75eedfb21e9229428", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "79012598269544b693e0de43b52ad09c14ebf89777faca0b7b8115deb6b22c64", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "a3c69947c610607891e3e2dcd942741a74d549f9ddaf0bd28dc62fc632166ac1", version: "0.43.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "253e6c1e1dec7c9a6bdd32b87bd7b541b25aa94ad9029398559fd28c40a482bc", version: "0.43.0", dependencies: [
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
