///I, Alexei Ougriniouk, student number 000776331, certify that this material is my original work.
///No other person's work has been used without due acknowledgement and I have not made my work available to anyone else.
//  DistanceViewController.swift
//  Converter
//
//  Created by Ahhhh Shhhhh on 2022-10-09.(this is my apple username, i was forced to make one )
//

import Foundation
import UIKit
/// This is the View Controller for the Distance Conversion  tab. It converts the number from Miles to Km , or Km to Miles
class DistanceViewController:UIViewController ,UITextFieldDelegate{
    
    @IBOutlet var DistanceExchange:UILabel!
    @IBOutlet var DistanceAmount:UITextField!
    


    /// This converts the textfield value in Miles and converts it to Kilometers
    @IBAction func ConvertMilestoKM(_ sender: Any) {
        if let inital = Double(DistanceAmount.text!){
            var convert = Double(DistanceAmount.text!)!
            convert = (convert * Double(1.609))
            let roundedValue = round(convert * 10) / 10.0
            DistanceExchange.text = " \(inital) Miles is equal to  \(roundedValue) Km"
            
        }
        else{
            let text = DistanceAmount.text
            DistanceExchange.text = " Unable to convert \(String(describing: text)) "
        }
    }
    /// This converts the textfield value in Kilometers and converts it to Miles
    @IBAction func ConvertKMtoMiles(_ sender: Any) {
        if let inital = Double(DistanceAmount.text!) {
            var convert = Double(DistanceAmount.text!)!
            convert = (convert * Double(0.621))
            let roundedValue = round(convert * 10) / 10.0
            
            DistanceExchange.text = " \(inital) Km is equal to  \(roundedValue) Miles"
        }
        else{
            let text = DistanceAmount.text
            DistanceExchange.text = " Unable to convert \(String(describing: text)) "
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    ///  This is the spawn keyboard function , you do have to do Command + K to spawn the keyboard though
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DistanceAmount.becomeFirstResponder()
        
    }
    
    ///This is for Dismissing the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return DistanceAmount.resignFirstResponder()
    }
    ///This records the touch so the dismissing of the keyboard can occur
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}
