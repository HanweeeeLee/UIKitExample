//
//  ViewController.swift
//  CollectionView
//
//  Created by hanwe lee on 2020/06/22.
//  Copyright © 2020 hanwe lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myCollectionView.delegate = self
        self.myCollectionView.dataSource = self
        self.myCollectionView.register(UINib(nibName: "MyCell", bundle: nil), forCellWithReuseIdentifier: "MyCell")
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        self.myCollectionView.collectionViewLayout = layout
        self.myCollectionView.showsHorizontalScrollIndicator = false
        self.myCollectionView.showsVerticalScrollIndicator = false
    }
}

extension ViewController:UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let resultCnt = 100
          
          return resultCnt
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! MyCell
        if indexPath.item%2 == 0 {
            cell.myImgView.image = UIImage(named: "1")
            cell.myLabel.text = "hello"
        }
        else {
            cell.myImgView.image = UIImage(named: "2")
            cell.myLabel.text = "hi"
        }
        return cell
      }
      
      func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
      }
      
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize:CGSize = CGSize(width: UIScreen.main.bounds.width/2 - 50, height: UIScreen.main.bounds.width)
          
          return cellSize
      }
      
      func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let edgeInsets:UIEdgeInsets = .init(top: 100,
                                            left: 0,
                                            bottom: 0,
                                            right: 0)
          return edgeInsets
      }
    
}

