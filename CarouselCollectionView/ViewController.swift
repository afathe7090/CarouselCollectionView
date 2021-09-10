//
//  ViewController.swift
//  CarouselCollectionView
//
//  Created by Ahmed Fathy on 03/09/2021.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout,UICollectionViewDelegate{
    
    let cellWidth = (3 / 4) * UIScreen.main.bounds.width
    let sectionSpacing = (1 / 8) * UIScreen.main.bounds.width
    let cellSpacing = (1 / 16) * UIScreen.main.bounds.width
    
    
    let layout = PagingCollectionViewLayout()
           
    
    
    
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: sectionSpacing + 25, bottom: 0, right: sectionSpacing + 25)
        layout.itemSize = CGSize(width: cellWidth - 50, height: cellWidth)
        layout.minimumLineSpacing = cellSpacing
        
        collectionView.decelerationRate = .fast
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = layout
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        let width = Int(collectionView.frame.width) / 2
//        let height = Int(collectionView.frame.height / 2)
//        return CGSize(width: width, height: height)
//    }
//
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 20
//    }
}

