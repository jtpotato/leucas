//
//  VersionText.swift
//  leucas
//
//  Created by Joel Tan on 21/12/2023.
//

import Foundation

extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}

func printVersionText() {
    print("About leucas")
    print("Bundle ID: \(Bundle.main.bundleIdentifier ?? "unavaliable")")
    print("Version: \(Bundle.main.releaseVersionNumber ?? "unavaliable")")
    print("Build: 0x\(Bundle.main.buildVersionNumber ?? "unavaliable")")
}
