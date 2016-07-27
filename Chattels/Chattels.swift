//
//  ChattelsModel.swift
//  Chattels
//
//  Created by Nishant Punia on 28/07/16.
//  Copyright © 2016 MLBNP. All rights reserved.
//

import Foundation
import UIKit

class Chattels {
    let mainImage: UIImage?
    let workText: String?
    let workTitle: String!
    
    init(mainImage: UIImage?,workText: String?,workTitle: String!) {
        self.mainImage = mainImage
        self.workText = workText
        self.workTitle = workTitle
    }
}
