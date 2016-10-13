//
//  RatingsViewController.swift
//  Chattels
//
//  Created by Nishant Punia on 24/08/16.
//  Copyright © 2016 MLBNP. All rights reserved.
//

import UIKit

class RatingsViewController: UIViewController {
    
    @IBOutlet weak var reviewView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        reviewView.layer.cornerRadius = 5.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
