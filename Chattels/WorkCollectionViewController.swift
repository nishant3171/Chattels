//
//  WorkCollectionViewController.swift
//  Chattels
//
//  Created by Nishant Punia on 28/07/16.
//  Copyright © 2016 MLBNP. All rights reserved.
//

import UIKit

class WorkCollectionViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    //MARK: ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.automaticallyAdjustsScrollViewInsets = false
       
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        
        
    }
    //MARK: CollectionViewDataSource
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("WorkCell", forIndexPath: indexPath)
        cell.layer.cornerRadius = 5.0
        return cell
    }
    
    //MARK: CollectionViewDelegateFlowLayout
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let width = (CGRectGetWidth(collectionView.frame) / 2) - 4
        return CGSizeMake(width, width)
        
    }
    
    
}
