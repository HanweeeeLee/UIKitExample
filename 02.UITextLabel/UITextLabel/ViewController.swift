//
//  ViewController.swift
//  UITextLabel
//
//  Created by hanwe lee on 2020/06/22.
//  Copyright © 2020 hanwe lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = "안녕하세요"
        label1.font = UIFont(name: "HelveticaNeue-BoldItalic", size: 20)
        label1.textColor = .brown
        let sumAttString = NSMutableAttributedString(string: "hello world", attributes: [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-BoldItalic", size: 12) as Any, NSAttributedString.Key.foregroundColor : UIColor.blue])
        sumAttString.addAttributedStringInSpecificString(targetString: "hello", attr: [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-UltraLight", size: 12) as Any, NSAttributedString.Key.foregroundColor : UIColor.red])
        label2.attributedText = sumAttString
    }

}

extension NSMutableAttributedString {
    func addAttributedStringInSpecificString(targetString: String, attr: [NSAttributedString.Key : Any]) {
        let range = (self.string as NSString).range(of: targetString)
        self.addAttributes(attr, range: range)
    }
}

