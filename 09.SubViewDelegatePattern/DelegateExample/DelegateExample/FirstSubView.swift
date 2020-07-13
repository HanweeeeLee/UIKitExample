//
//  FirstSubView.swift
//  DelegateExample
//
//  Created by hanwe on 2020/07/11.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit

protocol FirstSubViewDelegate:class {
    func btnClick()
}

class FirstSubView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    weak var delegate:FirstSubViewDelegate?
    @IBAction func action(_ sender: Any) {
        self.delegate?.btnClick()
    }
    class func loadFromNibNamed(nibNamed: String, bundle : Bundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiate(withOwner: nil, options: nil)[0] as? UIView
    }
    
    override func awakeFromNib() {
    }

}
