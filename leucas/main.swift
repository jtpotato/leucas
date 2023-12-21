//
//  main.swift
//  leucas
//
//  Created by Joel Tan on 21/12/2023.
//

import Foundation

var arguments = CommandLine.arguments;

if (arguments.count == 1) {
    print("Error: Missing Script File.");
    abort()
}

var scriptFilePath = arguments[1]


