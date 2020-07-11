//
//  ViewController.swift
//  IndicatorAndThread
//
//  Created by hanwe on 2020/07/11.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.indicator.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func testAction(_ sender: Any) {
        self.indicator.isHidden = false
        self.indicator.startAnimating()
        DispatchQueue.global().async {
            for i in 0..<5 {
                usleep(1 * 1000 * 1000)
                print("\(i+1)")
            }
//            DispatchQueue.main.async {
                self.indicator.stopAnimating()
                self.indicator.isHidden = true
//            }
        }
    }
    

}

