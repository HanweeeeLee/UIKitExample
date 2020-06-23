//
//  ViewController.swift
//  UITextfield
//
//  Created by hanwe lee on 2020/06/22.
//  Copyright © 2020 hanwe lee. All rights reserved.
//

/*
 TextField + delegate + event notification
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTextField.font = UIFont(name: "HelveticaNeue-Thin", size: 13)
        self.myTextField.keyboardType = .numberPad
        self.myTextField.borderStyle = .bezel
//        self.myTextField.delegate = self
//        self.myTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        self.myTextField2.isSecureTextEntry = true
        self.myTextField2.borderStyle = .line
    }
    
//    @objc func textFieldDidChange(_ textField: UITextField) {
//        print("입력된 글자 :\(String(describing: self.myTextField.text))")
//    }


}

//extension ViewController:UITextFieldDelegate {
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print("편집을 시작했다 !")
//    }
//
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        print("편집을 끝냈다 !")
//    }
//}

