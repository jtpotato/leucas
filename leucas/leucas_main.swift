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
    @Argument(help: "The location of the script file to read from.")
    var scriptFilePath: String
    
    mutating func run() async throws {
        let script = readScript(path: scriptFilePath)
        
        print("hello world")
        print(script)
        
        for message in script.messages {
            await sendMessage(apiURL: script.characters[message.sender].api, content: message.content, username: script.characters[message.sender].name);
            try await Task.sleep(nanoseconds: UInt64(1e9))
        }
    }
}
