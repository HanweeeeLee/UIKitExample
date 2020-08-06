//
//  CollectionViewCellType1.swift
//  ExampleViewController
//
//  Created by hanwe on 2020/08/06.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit

class CollectionViewCellType1: UICollectionViewCell {

    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var imgContainerView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var textContainerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var shippingPriceContainerView: UIView!
    @IBOutlet weak var shippingPriceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
    }
    
    func initUI() {
        
        self.mainContainerView.backgroundColor = .white
        self.imgContainerView.backgroundColor = .clear
        self.imgContainerView.layer.borderWidth = 1
        self.imgContainerView.layer.borderColor = UIColor.lightGray.cgColor
        self.imgContainerView.layer.cornerRadius = 3
        self.textContainerView.backgroundColor = .clear
        
        
        self.titleLabel.font = UIFont(name: "HelveticaNeue", size: 10)
        self.titleLabel.textColor = .darkGray
        
        self.priceLabel.font = UIFont(name: "HelveticaNeue", size: 10)
        self.priceLabel.textColor = .gray
        
        self.shippingPriceContainerView.backgroundColor = .clear
        self.shippingPriceContainerView.layer.borderWidth = 1
        self.shippingPriceContainerView.layer.borderColor = UIColor.lightGray.cgColor
        self.shippingPriceContainerView.layer.cornerRadius = 3
        
        self.shippingPriceLabel.font = UIFont(name: "HelveticaNeue", size: 10)
        self.shippingPriceLabel.textColor = .lightGray
    }

}
