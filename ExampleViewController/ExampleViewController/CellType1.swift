//
//  CellType1.swift
//  ExampleViewController
//
//  Created by hanwe on 2020/08/06.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit

class CellType1: UITableViewCell {

    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var topContainerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var moreBtnView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initUI()
    }
    
    func initUI() {
        self.mainContainerView.backgroundColor = .white
        self.topContainerView.backgroundColor = .clear
        self.moreBtnView.backgroundColor = .clear
        let moreViewGesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(moreViewAction))
        self.moreBtnView.addGestureRecognizer(moreViewGesture)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    @objc func moreViewAction(_ sender: UITapGestureRecognizer) {
        
    }
}

extension CellType1:UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
    
    
}

