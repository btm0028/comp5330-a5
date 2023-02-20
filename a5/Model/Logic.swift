//
//  Logic.swift
//  a5
//
//  Created by Brandon  Miller on 2/19/23.
//

import Foundation

struct Logic {
    var CADON = true
    var EURON = true
    var MXNON = true
    var CNYON = true
    var usd = ""
    
    mutating func getCAD(_ amount: Int) -> Float {
        return Float(amount) * 1.35
    }
    
    mutating func getEUR(_ amount: Int) -> Float {
        return Float(amount) * 0.94
    }
    
    mutating func getMXN(_ amount: Int) -> Float {
        return Float(amount) * 18.34
    }
    
    mutating func getCNY(_ amount: Int) -> Float {
        return Float(amount) * 6.86
    }
    
    mutating func getUSDFromString() -> Int {
        return Int(self.usd) ?? 0
    }
    
}
