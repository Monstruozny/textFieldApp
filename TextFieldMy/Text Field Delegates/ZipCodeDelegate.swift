//
//  ZipCodeDelegate.swift
//  TextFieldMy
//
//  Created by admin on 03.03.2021.
//

import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    let digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //bool flag to return
        var flag = false
        //check condition: characters should be digits
        for digit in digits {
            if (string == digit) || (string == "") {
                flag = true
                break
            }
        }
        //check condition: text count shouldn't be more then 5
        if (textField.text!.count >= 5) && (string != "") {
            flag = false
        }
        return flag
    }
}
