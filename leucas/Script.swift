//
//  Script.swift
//  leucas
//
//  Created by Joel Tan on 21/12/2023.
//

import Foundation

struct ScriptCharacter: Codable {
    var api: String
    var profile: String?
    var name: String
}

struct ScriptMessage: Codable {
    var sender: Int
    var content: String
}

struct Script: Codable {
    var characters: [ScriptCharacter]
    var messages: [ScriptMessage]
}
