//
//  MyCell.swift
//  CollectionView
//
//  Created by hanwe on 2020/07/11.
//  Copyright © 2020 hanwe lee. All rights reserved.
//

import UIKit

class MyCell: UICollectionViewCell {
    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var myImgView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myImgView.contentMode = .scaleAspectFill
        self.myLabel.textColor = .white
        // Initialization code
    }

}
