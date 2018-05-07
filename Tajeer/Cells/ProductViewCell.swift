//
//  ProductViewCell.swift
//  Tajeer
//
//  Created by Omar on 03/05/2018.
//  Copyright © 2018 Omar. All rights reserved.
//

import UIKit

class ProductViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImagesView: UIImageView!
    @IBOutlet weak var availableLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var perLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    var isHeightCalculated: Bool = false
    
//    override func preferredLayoutAttributesFitting(_ layoutAttributes:
//    UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
//        if isHeightCalculated{
//            setNeedsLayout()
//            layoutIfNeeded()
//            let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
//            var newFrame = layoutAttributes.frame
//            newFrame.size.width = CGFloat(ceilf(Float(size.width)))
//            layoutAttributes.frame = newFrame
//            isHeightCalculated = true
//        }
//        return layoutAttributes
//    }
}
