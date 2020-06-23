//
//  ViewController.swift
//  UIView
//
//  Created by hanwe lee on 2020/06/22.
//  Copyright © 2020 hanwe lee. All rights reserved.
//

/*
 UIView + Button + autolayout
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var myViewTraillingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func draw1(_ sender: Any) {
        let view1:UIView = UIView()
        view1.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        view1.backgroundColor = .yellow
        self.myView.addSubview(view1)
    }
    
    @IBAction func draw2(_ sender: Any) {
        let view2:UIView = UIView()
        view2.backgroundColor = .blue
        self.myView.addSubview(view2)
        
        self.myView.addSubviewSingleWithAutoLayoutWithConstant(subView: view2, leadingConstant: 0, TrailingConstant: 0, TopConstant: 0, BottomConstant: 0)
    }
    
    

}

extension UIView {
    func addSubviewSingleWithAutoLayoutWithConstant(subView: UIView, leadingConstant: CGFloat, TrailingConstant: CGFloat, TopConstant: CGFloat, BottomConstant: CGFloat) {
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(subView)
        
        let horConstraint1 = NSLayoutConstraint(item: subView, attribute: .leading, relatedBy: .equal,
                                                toItem: self, attribute: .leading,
                                                multiplier: 1.0, constant: leadingConstant)
        
        let horConstraint2 = NSLayoutConstraint(item: subView, attribute: .trailing, relatedBy: .equal,
                                                toItem: self, attribute: .trailing,
                                                multiplier: 1.0, constant: -TrailingConstant)
        
        let horConstraint3 = NSLayoutConstraint(item: subView, attribute: .top, relatedBy: .equal,
                                                toItem: self, attribute: .top,
                                                multiplier: 1.0, constant: TopConstant)
        
        let horConstraint4 = NSLayoutConstraint(item: subView, attribute: .bottom, relatedBy: .equal,
                                                toItem: self, attribute: .bottom,
                                                multiplier: 1.0, constant: -BottomConstant)
        
        self.addConstraints([horConstraint1, horConstraint2, horConstraint3, horConstraint4])
    }
}

