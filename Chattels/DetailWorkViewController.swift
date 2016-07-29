//
//  DetailWorkViewController.swift
//  Chattels
//
//  Created by Nishant Punia on 29/07/16.
//  Copyright © 2016 MLBNP. All rights reserved.
//

import UIKit

class DetailWorkViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.automaticallyAdjustsScrollViewInsets = false
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        var insets = self.collectionView.contentInset
//        let value = (self.view.frame.size.width-(self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout).itemSize.width) 
        insets.left = 0
        insets.right = 0
        self.collectionView.contentInset = insets
        self.collectionView.decelerationRate = UIScrollViewDecelerationRateFast
    }
    
    // MARK: CollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("WorkImage", forIndexPath: indexPath)
        cell.layer.cornerRadius = 5.0
        return cell
    }
    
    //MARK: CollectionViewDelegateFlowLayout
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let width = CGRectGetWidth(collectionView.frame)
        let height = CGRectGetHeight(collectionView.frame)
        return CGSizeMake(width, height)
    }
    
}
