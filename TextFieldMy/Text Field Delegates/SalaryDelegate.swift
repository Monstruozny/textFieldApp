//
//  CalaryDelegate.swift
//  TextFieldMy
//
//  Created by admin on 04.03.2021.
//

import UIKit

class SalaryDelegate: NSObject, UITextFieldDelegate {
    
    let digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //bool flag to return
        var flag = false
        
        //function performing text changing for salary text field
        func performTextChange (_ str: String) -> String {
            var oldText = textField.text! as String
            oldText.removeFirst()
            if str != "" {
                let salary = Int(Double(oldText)!*100)
                let salaryRemainder = salary % 10
                let salaryQuotient = (salary - salaryRemainder) / 10
                oldText = "$" + String(salaryQuotient) + "." + String(salaryRemainder)
            }else if (oldText.count > 5) || (Double(oldText) != 0) {
                let salary = Int(Double(oldText)!*100)
                let salaryRemainder = salary % 1000
                let salaryQuotient = (salary - salaryRemainder) / 1000
                oldText = "$" + String(salaryQuotient) + "." + String(salaryRemainder)
            }else{
                oldText = "$" + oldText
                flag = false
            }
            return oldText
        }
        
        //check conditions: characters should be numbers
        for digit in digits {
            if (string == digit) || (string == "") {
                flag = true
                textField.text = performTextChange(string)
                break
            }
        }
        
        return flag
    }
}

