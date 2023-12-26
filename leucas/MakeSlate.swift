//
//  MakeSlate.swift
//  leucas
//
//  Created by Joel Tan on 26/12/2023.
//

import Foundation

func makeSlate(file: String, characters: [ScriptCharacter]) -> String {
    var slateContent = ""
    
    let fileName = URL(filePath: file).lastPathComponent
    slateContent += "### NAME:\n`\(fileName)`\n"
    
    let time = Date().formatted(date: .abbreviated, time: .standard)
    slateContent += "### TIME:\n`\(time)`\n"
    
    slateContent += "### CHARACTERS:\n"
    characters.forEach { character in
        slateContent += "- \(character.name)\n"
    }
    
    return slateContent
}

func _makeSlateTest() -> Bool {
    print("Test: Can Make Slate")
    
    let slate = makeSlate(file: "script.json", characters: [ScriptCharacter(api: "mock", name: "character a")])
    print(slate)
        
    return true
}
