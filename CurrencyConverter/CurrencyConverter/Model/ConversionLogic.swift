//
//  ConversionLogic.swift
//  CurrencyConverter
//
//  Created by Zach Evetts on 1/29/23.
//

import Foundation

struct ConversionLogic {
    
    var digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    var euro = 0.9198
    var yen = 129.88
    var aud = 1.41
    var peso = 18.79
    
    var eSwitch = true
    var ySwitch = true
    var aSwitch = true
    var pSwitch = true
    
    mutating func setEuroSwitch(_ switchValue: Bool) {
        if switchValue {
            eSwitch = true
        } else {
            eSwitch = false
        }
    }
    
    mutating func setYenSwitch(_ switchValue: Bool) {
        if switchValue {
            ySwitch = true
        } else {
            ySwitch = false
        }
    }
    
    mutating func setAUDSwitch(_ switchValue: Bool) {
        if switchValue {
            aSwitch = true
        } else {
            aSwitch = false
        }
    }
    
    mutating func setPesoSwitch(_ switchValue: Bool) {
        if switchValue {
            pSwitch = true
        } else {
            pSwitch = false
        }
    }

    func usdToEuro(_ userInput: String) -> String {
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && character {
            let usd = Double(userInput)!
            let value = usd * Double(euro)
            let doubleStr = String(format: "%.2f", value)
            return doubleStr
        } else {
            return "0"
        }
    }

    func usdToYen(_ userInput: String) -> String {
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && character {
            let usd = Double(userInput)!
            let value = usd * Double(yen)
            let doubleStr = String(format: "%.2f", value)
            return doubleStr
        } else {
            return "0"
        }
    }

    func usdToAUD(_ userInput: String) -> String {
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && character {
            let usd = Double(userInput)!
            let value = usd * Double(aud)
            let doubleStr = String(format: "%.2f", value)
            return doubleStr
        } else {
            return "0"
        }
    }

    func usdToPeso(_ userInput: String) -> String {
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && character {
            let usd = Double(userInput)!
            let value = usd * Double(peso)
            let doubleStr = String(format: "%.2f", value)
            return doubleStr
        } else {
            return "0"
        }
    }
}
