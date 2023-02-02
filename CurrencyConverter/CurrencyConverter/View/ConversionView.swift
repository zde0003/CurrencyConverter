//
//  ConversionView.swift
//  CurrencyConverter
//
//  Created by Zach Evetts on 1/29/23.
//

import UIKit

class ConversionView: UIViewController {

    @IBOutlet weak var amountEntered: UILabel!
    
    @IBOutlet weak var euroLabel: UILabel!
    
    @IBOutlet weak var yenLabel: UILabel!
    
    @IBOutlet weak var audLabel: UILabel!
    
    @IBOutlet weak var pesoLabel: UILabel!
    
    @IBOutlet weak var EuroAmount: UILabel!
    
    @IBOutlet weak var YenAmount: UILabel!
    
    @IBOutlet weak var AUDAmount: UILabel!
    
    @IBOutlet weak var PesoAmount: UILabel!
    
    var logic = ConversionLogic()
    
    var usdAmount = ""
    var eAmount = ""
    var yAmount = ""
    var aAmount = ""
    var pAmount = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountEntered.text = "USD: $ \(usdAmount)"
        
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: usdAmount))
        
        if character {
            
            if eAmount == "0" {
                euroLabel.isHidden = true
                EuroAmount.isHidden = true
            } else {
                euroLabel.text = "European Euro:"
                EuroAmount.text = eAmount
            }
            
            if yAmount == "0" {
                yenLabel.isHidden = true
                YenAmount.isHidden = true
            } else {
                yenLabel.text = "Japanese Yen:"
                YenAmount.text = yAmount
            }
            
            if aAmount == "0" {
                audLabel.isHidden = true
                AUDAmount.isHidden = true
            } else {
                audLabel.text = "Australian Dollar:"
                AUDAmount.text = aAmount
            }
            
            if pAmount == "0" {
                pesoLabel.isHidden = true
                PesoAmount.isHidden = true
            } else {
                pesoLabel.text = "Mexican Peso:"
                PesoAmount.text = pAmount
            }
        } else {
            amountEntered.text = "Please enter an integer!"
            euroLabel.isHidden = true
            EuroAmount.isHidden = true
            yenLabel.isHidden = true
            YenAmount.isHidden = true
            audLabel.isHidden = true
            AUDAmount.isHidden = true
            pesoLabel.isHidden = true
            PesoAmount.isHidden = true
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
