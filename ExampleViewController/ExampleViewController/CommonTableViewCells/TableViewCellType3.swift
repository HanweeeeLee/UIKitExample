//
//  TableViewCellType1.swift
//  ExampleViewController
//
//  Created by hanwe on 2020/08/06.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit
import SwiftyJSON

class TableViewCellType3: UITableViewCell {
    
    //MARK: IBOutlet
    
    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var topContainerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var moreBtnView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: property
    
    var infoData:JSON = JSON.null {
        didSet {
            print("info3:\(infoData)")
            self.collectionView.reloadData()
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
        self.topContainerView.backgroundColor = .clear
        self.moreBtnView.backgroundColor = .clear
        let moreViewGesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(moreViewAction))
        self.moreBtnView.addGestureRecognizer(moreViewGesture)
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "CollectionViewCellType2", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCellType2")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        self.collectionView.collectionViewLayout = layout
        self.collectionView.showsHorizontalScrollIndicator = false
    }
    
    //MARK: action

    @objc func moreViewAction(_ sender: UITapGestureRecognizer) {
        
    }
    
}

extension TableViewCellType3:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.infoData.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let data:JSON = self.infoData[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellType2", for: indexPath) as! CollectionViewCellType2
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize:CGSize = CGSize(width: UIScreen.main.bounds.width/2 - 50, height: UIScreen.main.bounds.width)
        
        return cellSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let edgeInsets:UIEdgeInsets = .init(top: 0,
                                            left: 0,
                                            bottom: 0,
                                            right: 0)
        return edgeInsets
    }
    
    
}

