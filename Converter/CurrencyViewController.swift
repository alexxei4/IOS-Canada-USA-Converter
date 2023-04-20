//I, Alexei Ougriniouk, student number 000776331, certify that this material is my original work.
//No other person's work has been used without due acknowledgement and I have not made my work available to anyone else.
//  CurrencyViewController.swift
//  Converter
//
//  Created by Ahhhh Shhhhh on 2022-10-09. (this is my apple username, i was forced to make one )
//

import Foundation
import UIKit

/// This is the View Controller for the Currency Exchange tab. It converts your amount from CAD to USD , or USD to CAD
class CurrencyViewController:UIViewController,UITextFieldDelegate{
    @IBOutlet var CurrencyExchange:UILabel!
    @IBOutlet var CurrencyAmount:UITextField!
    


    /// This converts the textfield value in CAD and converts it to USD
    @IBAction func ConvertCADtoUSD(_ sender: Any) {
        if let inital = Double(CurrencyAmount.text!){
            var convert = Double(CurrencyAmount.text!)!
            convert = (convert * Double(0.72956796))
            let roundedValue = round(convert * 100) / 100.0
            
            CurrencyExchange.text = " $ \(inital) CAD is equal to  $ \(roundedValue) USD"
        }
        else{
            let text = CurrencyAmount.text
            CurrencyExchange.text = " Unable to convert \(String(describing: text)) "
        }
      
    }
    /// This converts the textfield value in USD and converts it to CAD
    @IBAction func ConvertUSDtoCAD(_ sender: Any) {
        if let inital = Double(CurrencyAmount.text!){
            var convert = Double(CurrencyAmount.text!)!
            convert = (convert * Double(1.27043204))
            let roundedValue = round(convert * 100) / 100.0
            
            CurrencyExchange.text = " $ \(inital) USD is equal to  $ \(roundedValue) CAD"
        }
        else{
            let text = CurrencyAmount.text
            CurrencyExchange.text = " Unable to convert \(String(describing: text)) "
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    ///  This is the spawn keyboard function , you do have to do Command + K to spawn the keyboard though
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        CurrencyAmount.becomeFirstResponder()
        
    }
    ///This is for Dismissing the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return CurrencyAmount.resignFirstResponder()
    }
    ///This records the touch so the dismissing of the keyboard can occur
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
