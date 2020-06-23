//
//  ViewController.swift
//  LifeCycle
//
//  Created by hanwe lee on 2020/06/22.
//  Copyright © 2020 hanwe lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func testAction(_ sender: Any) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "MyViewController") as? MyViewController {
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }


}

