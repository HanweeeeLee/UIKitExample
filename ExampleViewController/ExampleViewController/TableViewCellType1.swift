//
//  TableViewCellType1.swift
//  ExampleViewController
//
//  Created by hanwe on 2020/08/06.
//  Copyright © 2020 hanwe. All rights reserved.
//

import UIKit

class TableViewCellType1: UITableViewCell {
    
    //MARK: IBOutlet
    
    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var topContainerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var moreBtnView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: property
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
        self.collectionView.register(UINib(nibName: "CollectionViewCellType1", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCellType1")
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

extension TableViewCellType1:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let resultCnt = 100
          
          return resultCnt
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellType1", for: indexPath) as! CollectionViewCellType1
        
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

