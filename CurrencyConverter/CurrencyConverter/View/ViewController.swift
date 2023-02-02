//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Zach Evetts on 1/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var EnterUSD: UILabel!
    
    @IBOutlet weak var CurrencyOne: UILabel!
    
    @IBOutlet weak var CurrencyTwo: UILabel!
    
    @IBOutlet weak var CurrencyThree: UILabel!
    
    @IBOutlet weak var CurrencyFour: UILabel!
    
    @IBOutlet weak var USDTextbox: UITextField!
    
    @IBOutlet weak var CurrencyConvertButton: UIButton!
    
    var logic = ConversionLogic()
    
    var amount = ""
    var amountEntered = ""
    var euroString = ""
    var yenString = ""
    var audString = ""
    var pesoString = ""
    
    var eswitch = true
    var yswitch = true
    var aswitch = true
    var pswitch = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EnterUSD.text = "Enter USD:"
        CurrencyOne.text = "European Euro"
        CurrencyTwo.text = "Japanese Yen"
        CurrencyThree.text = "Australian Dollar"
        CurrencyFour.text = "Mexican Peso"
        CurrencyConvertButton.setTitle("CONVERT", for: .normal)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        guard NSCharacterSet(charactersIn: "0123456789").isSuperset(of: NSCharacterSet(charactersIn: string) as CharacterSet) else {
            return false
        }
        return true
    }
    
    @IBAction func convert(_ sender: UIButton) {
        let userInput = USDTextbox.text
        
        if logic.eSwitch {
            euroString = logic.usdToEuro(userInput!)
        } else {
            euroString = "0"
        }
        
        if logic.ySwitch {
            yenString = logic.usdToYen(userInput!)
        } else {
            yenString = "0"
        }

        if logic.aSwitch {
            audString = logic.usdToAUD(userInput!)
        } else {
            audString = "0"
        }

        if logic.pSwitch {
            pesoString = logic.usdToPeso(userInput!)
        } else {
            pesoString = "0"
        }
        
        self.performSegue(withIdentifier: "toConversionAmount", sender: self)
    }
    
    @IBAction func euroSwitch(_ sender: UISwitch) {
        logic.setEuroSwitch(sender.isOn)
    }
    
    @IBAction func YenSwitch(_ sender: UISwitch) {
        logic.setYenSwitch(sender.isOn)
    }
    
    @IBAction func audSwitch(_ sender: UISwitch) {
        logic.setAUDSwitch(sender.isOn)
    }
    
    @IBAction func pesoSwitch(_ sender: UISwitch) {
        logic.setPesoSwitch(sender.isOn)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConversionAmount" {
            let navigation = segue.destination as! ConversionView
            navigation.usdAmount = USDTextbox.text!
            navigation.eAmount = euroString
            navigation.yAmount = yenString
            navigation.aAmount = audString
            navigation.pAmount = pesoString
        }
    }
}
