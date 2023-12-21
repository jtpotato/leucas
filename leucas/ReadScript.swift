//
//  ReadScript.swift
//  leucas
//
//  Created by Joel Tan on 21/12/2023.
//

import Foundation

func readScript(path: String) -> Script {
    var scriptText = ""
    
    do {
        scriptText = try String(contentsOfFile: path)
    }
    catch {
        print(error)
        abort()
    }
    
    let decoder = JSONDecoder()
    
    var script: Script;
    
    do {
        script = try decoder.decode(Script.self, from: scriptText.data(using: .utf8)!)
    }
    catch {
        print(error)
        abort()
    }
    
    return script;
}
