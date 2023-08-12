//
//  Values.swift
//  Randomizer2.0
//
//  Created by Goodwasp on 11.08.2023.
//

struct Values {
    var minimumValue: Int
    var maximumValue: Int
    
    var randomNumber: Int {
        Int.random(in: minimumValue...maximumValue)
    }
    
    static func getDefaultValues() -> Values {
        Values(minimumValue: 0, maximumValue: 100)
    }
}
