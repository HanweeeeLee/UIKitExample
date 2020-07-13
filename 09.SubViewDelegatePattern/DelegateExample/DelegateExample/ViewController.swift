//
//  ViewController.swift
//  DelegateExample
//
//  Created by hanwe on 2020/07/11.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var myLabel: UILabel!
    
    var currentCnt:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstView = (FirstSubView.loadFromNibNamed(nibNamed: "FirstSubView") as! FirstSubView)
        self.backgroundView.addSubview(firstView)
        firstView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        firstView.snp.makeConstraints{ make in
            make.leading.equalTo(self.backgroundView.snp.leading).offset(0)
            make.trailing.equalTo(self.backgroundView.snp.trailing).offset(0)
            make.top.equalTo(self.backgroundView.snp.top).offset(0)
            make.height.equalTo(100)
        }
        firstView.delegate = self
        self.myLabel.text = "\(currentCnt)"
    }
}

extension ViewController:FirstSubViewDelegate {
    func btnClick() {
        self.currentCnt += 1
        print("currentCnt:\(currentCnt)")
        self.myLabel.text = "\(currentCnt)"
    }
    
    
}

