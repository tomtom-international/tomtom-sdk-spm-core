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

let sdkVersion = "0.52.0"

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
    Module("TomTomSDKCommon", sha: "86918f02f730aff00751c2e74cedae7b9b9bd0add573d1d94d40d46501788f67", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkLoggingInternal"),
    ]),
    Module("TomTomSDKRoute", sha: "35a6bdca2dd0408133b5a21613bc9dafdc642dd4eac70e04606b3bc48a4adcb8", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKFeatureToggle", sha: "57c2c0c4d7a2d69a000910bf795ab3b6480b668eb8ada5260453cc085502c1bb", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKNetworking", sha: "2347f12556e8069b236ead433ff1e5ae26f71b99dd25b44c4437dc7f5641a843", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKBindingFrameworkHTTPInternal"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKLocationProvider", sha: "caa775c3d174d6fb7acfef4b6a0da9ffadd3c117f9c7594bad0b992f795c10c6", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKBindingMapDisplayEngineInternal", sha: "753a81d94456366087f3c6da3cc03e7ea4247942759b648c8fb460d6dd4ac85f", version: "0.52.0"),
    Module("TomTomSDKMapDisplay", sha: "457661fc8e7b0f8d27d86c8fd9b782337bc975fb2568a843cf76c7ad93864b84", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKBindingMapDisplayEngineInternal"),
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKRoutePlanner", sha: "d49f159187413f1d90664555c77b0b46005c56694724cc140925f3544151ac53", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKRoutePlannerOnline", sha: "e6b10c4d3dd151e1e55067fbd91eba978c6f3b71bc222689729c6de5539ba896", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoutePlanner"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKLocationProvider"),
        .corePackageModule("TomTomSDKFeatureToggle"),
        .corePackageModule("TomTomSDKRoutingCommon"),
        .corePackageModule("TomTomSDKRangeCalculator"),
    ]),
    Module("TomTomSDKPersonalData", sha: "1c25b1866e034055f7b8afe524d190d3f8bdfaace603dca6d03881f00457ac6f", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPersonalDataDefault", sha: "5c836b3ad33c5063b29ac955affd34860100b3aaad954e0fdee088c5111abd5d", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKPersonalData"),
        .corePackageModule("TomTomSDKMQTT"),
    ]),
    Module("TomTomSDKSearch", sha: "9b07d4070928dd270d37f939cde361ae9a2ebc52771cc067f06f44e61d06febc", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKSearchCommon", sha: "37c5be59016f4d7120fd2a1cad78afa0290e350ef2a335a9c80fe65f30a66d48", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKSearchOnline", sha: "d09dcd55a3ebe35974b418c05ed601431362bf6323ce2ae3b74004404dab61a6", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKSearchCommon"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKSearchUI", sha: "159f87e6c57c450c8cd9b2fee15b2c9cdfe55a630702183e0254072ac18a52e7", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKCommonUI"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKCommonUI", sha: "9088adeefee763a99e01bc304e4dbbbe72cebf89d427d7699fb55d35a79df113", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoder", sha: "85598639af5c2d69558a23cd344e19e3109b5f49435338a7b41c2c2ab9fcf189", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKReverseGeocoderOnline", sha: "35100ae15269458ac6f2560e9c50edaa5cdfac3a7424b648d024117a885cc0af", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKReverseGeocoder"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKBindingFrameworkHTTPInternal", sha: "6374ff1400a3c137321817d084a31894a0e0ac2110dba4e1909cc9e2955d401b", version: "0.52.0"),
    Module("TomTomSDKBindingFrameworkLoggingInternal", sha: "adf8d9310931e8c79021ab1a78290d2e99836ec631de5face02bf3964aaa5439", version: "0.52.0"),
    Module("TomTomSDKTraffic", sha: "4df0a497211d6c1ec6a09591369decc0cb9c23a45fe9ed4c514b0355dd3d3a73", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKLocationProvider"),
    ]),
    Module("TomTomSDKDynamicData", sha: "6a4e0cdef62f128ccae9e18df7df05553e10aed8b94562b107054979486fd7b1", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKDynamicDataOnline", sha: "1ab0658e441a0d27f60122e78187b11898699bb8df1f70a84092a3eab98503dc", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKSearch"),
        .corePackageModule("TomTomSDKDynamicData"),
        .corePackageModule("TomTomSDKFeatureToggle"),
    ]),
    Module("TomTomSDKVehicle", sha: "4bab360458f4a356337ff694267c7057ce7cb795d69e1511c2d9353ee59fb0c8", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKTrafficDataProvider", sha: "fb2fc864af4fab295dc0a36c447dd3afe191c37e969ee391b853a3b62b9a3ec1", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKTraffic"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKBindingTrafficTileGeneratorInternal"),
    ]),
    Module("TomTomSDKBindingTrafficTileGeneratorInternal", sha: "4bea6ed8bb91f3c2235a289702bc11ebac5fbf8f65dc6a8545c9661b0b091398", version: "0.52.0"),
    Module("TomTomSDKRoutingVisualization", sha: "75c30e68994cb541486ae20dbf9cf92d8d5ebf811e445f65ce5b68a786fead4f", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKRoute"),
    ]),
    Module("TomTomSDKSearchVisualization", sha: "20afd2c35cc3d31eefb9f74bf60446e691428e083b827dd3e7ca2387ded62cfc", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKSearch"),
    ]),
    Module("TomTomSDKMQTT", sha: "370cba1a4d7413cda65966ec3a13acebe15d002aa2527c5be61f92e278b54fa2", version: "0.52.0", dependencies: [
        // core package dependencies
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKPOIVisualization", sha: "d5598ad87ba6215f20da3c43fdcf3cc00226508cd472d200af152ec28197ba74", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKMapDisplay"),
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeVisualization", sha: "eba51045f801cbb755d8ba1327e039949d10692bc43862b9a1f3e2eecf26e3ec", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKMapDisplay"),
    ]),
    Module("TomTomSDKRoutingCommon", sha: "60c087efd4921008a85979d88348ae5b9d8a3e44cea68fb1cdd84e03bae0b1e1", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
    ]),
    Module("TomTomSDKRangeCalculator", sha: "e0b5aee10ba98b574708c4599b8145852d367060cae5f1a2d3869dc1c5393f05", version: "0.52.0", dependencies: [
        .corePackageModule("TomTomSDKCommon"),
        .corePackageModule("TomTomSDKRoute"),
        .corePackageModule("TomTomSDKRoutingCommon"),
    ]),
    Module("TomTomSDKTelemetry", sha: "ef086682b78437cb95cdf39866976599a49f67a1b7c46bd464c25dddfdb043df", version: "0.52.0", dependencies: [
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
