//
//  Values.swift
//  Randomizer2.0
//
//  Created by Goodwasp on 11.08.2023.
//

struct Values {
    let minimumValue: Int
    let maximumValue: Int
    
    static func getDefaultValues() -> Values {
        Values(minimumValue: 0, maximumValue: 100)
    }
}
