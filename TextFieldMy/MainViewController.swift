//
//  MainViewController.swift
//  TextFieldMy
//
//  Created by admin on 03.03.2021.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: OUTLETS
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var switch3: UISwitch!
    
    let zipCodeDelegate = ZipCodeDelegate()
    let salaryDelegate = SalaryDelegate()
    
    //MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //delegates
        self.textField1.delegate = zipCodeDelegate
        self.textField2.delegate = salaryDelegate
        self.textField3.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return (switch3.isOn)
        }
}

