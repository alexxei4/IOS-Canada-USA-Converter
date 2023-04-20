//I, Alexei Ougriniouk, student number 000776331, certify that this material is my original work.
//No other person's work has been used without due acknowledgement and I have not made my work available to anyone else.
//  ViewController.swift
//  Converter
//
//  Created by Ahhhh Shhhhh on 2022-10-09. (this is my apple username, i was forced to make one )
//
import Foundation
import UIKit
/// This is the View Controller for the Temperature Conversion  tab. It converts the number from F to C , or C to F
class TemperatureViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var TempLabel:UILabel!
    @IBOutlet var Temperature:UITextField!
   

    
    /// This converts the textfield value in celsius and converts it to farenheit
    @IBAction func ConvertF(_ sender: Any) {
        if let inital = Double(Temperature.text!){
            var convert = Double(Temperature.text!)!
            convert = (convert * 9/5 ) + 32
            let roundedValue = round(convert * 10) / 10.0
            
            TempLabel.text = " \(inital)°C is equal to  \(roundedValue) °F"
        
        }
        else {
            let text = Temperature.text
            TempLabel.text = " Unable to convert \(String(describing: text)) "
        }
      
           
        
        
    }
    
    /// This converts the textfield value in farenheit and converts it to celsius
    @IBAction func ConvertC(_ sender: Any) {
       if let inital = Double(Temperature.text!){
            var convert = Double(Temperature.text!)!
            convert = (convert - 32) * 5/9
            let roundedValue = round(convert * 10) / 10.0
            
            TempLabel.text = " \(inital)°F is equal to  \(roundedValue) °C"
        }
        else {
            let text = Temperature.text
            TempLabel.text = " Unable to convert \(String(describing: text)) "
        }
       
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    ///  This is the spawn keyboard function , you do have to do Command + K to spawn the keyboard though
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        Temperature.becomeFirstResponder()
        
    }
    ///This is for Dismissing the keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return Temperature.resignFirstResponder()
    }
    ///This records the touch so the dismissing of the keyboard can occur
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
 
    
    
    


}

