
//
//  TableViewCellType2.swift
//  ExampleViewController
//
//  Created by hanwe on 2020/08/07.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit
import SwiftyJSON

class TableViewCellType2: UITableViewCell {

    //MARK: IBOutlet
    
    //MARK: property
    
    var infoData:JSON = JSON.null {
           didSet {
               
           }
       }
    
    //MARK: lifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //MARK: function
    
    //MARK: action
    
    
}
