//
//  main.swift
//  leucas
//
//  Created by Joel Tan on 21/12/2023.
//

import Foundation
import ArgumentParser

@main
struct leucas: AsyncParsableCommand {
    @Option(name: .shortAndLong, help: "The location of the script file to read from.")
    var file: String? = nil
    
    @Flag(name: .shortAndLong, help: "Displays information about this installation of leucas.")
    var version = false
    
    mutating func run() async throws {
        if (version) {
            printVersionText()
            return
        }
        
        if (file == nil) { return }
        
        // Continue on.
        let script = readScript(path: file!)
        
        for message in script.messages {
            var profile = script.characters[message.sender].profile
            
//            print("apiURL: \(script.characters[message.sender].api), content: \(message.content), username: \(script.characters[message.sender].name), avatarURL: \(profile ?? "")")
            
             await sendMessage(apiURL: script.characters[message.sender].api, content: message.content, username: script.characters[message.sender].name, avatarURL: profile);
            try await Task.sleep(nanoseconds: UInt64(1e9))
        }
    }
}
