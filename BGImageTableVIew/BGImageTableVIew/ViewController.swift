//
//  ViewController.swift
//  BGImageTableVIew
//
//  Created by hanwe on 2020/08/02.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImgContainerView: UIView!
    @IBOutlet weak var tableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableVIew.delegate = self
        self.tableVIew.dataSource = self
        self.tableVIew.backgroundColor = .clear
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell()
        cell.backgroundColor = .clear
        return cell
    }
    
    
}


