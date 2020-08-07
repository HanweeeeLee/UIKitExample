//
//  CollectionViewCellType1.swift
//  ExampleViewController
//
//  Created by hanwe on 2020/08/06.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit
import SwiftyJSON
import SDWebImage

class CollectionViewCellType1: UICollectionViewCell {
    
    //MARK: IBOutlet
    
    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var imgContainerView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var textContainerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var shippingPriceContainerView: UIView!
    @IBOutlet weak var shippingPriceLabel: UILabel!
    
    //MARK: property
    
    var infoData:JSON = JSON.null {
        didSet {
            self.titleLabel.text = infoData["title"].stringValue
            if infoData["shipping_price"].intValue == 0 {
                self.shippingPriceLabel.text = "무료배송"
            }
            else {
                self.shippingPriceLabel.text = "\(infoData["shipping_price"].intValue) 원"
            }
            self.priceLabel.text = "\(infoData["price"].intValue) 원"
            self.imgView.sd_setImage(with:  URL(string: infoData["image_url"].stringValue), placeholderImage: nil, options: .lowPriority, completed: nil)
        }
    }
    
    //MARK: lifeCycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
    }
    
    //MARK: function
    
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
    
    //MARK: action
    
    
    
    
    
    
    
}
