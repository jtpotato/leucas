//
//  RunTests.swift
//  leucas
//
//  Created by Joel Tan on 26/12/2023.
//

import Foundation

func runTests() {
    print("Running Tests:")
    
    var passed = 0
    if (_makeSlateTest()) { passed += 1 }
    
    print("TOTAL PASSED: \(passed)")
}
