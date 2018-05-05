//
//  ProductsViewController.swift
//  Tajeer
//
//  Created by Omar on 03/05/2018.
//  Copyright © 2018 Omar. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    //model
    var products:[Item] = []

    //outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product = Item(description: "نظارة شمسية حلوة وجديدة تقدرين تستخدميها في الأعراس", price:1, distance: 12.0, imagesURLS: ["kalifa"], availableTo: Date())
        let product2 = Item(description: "نظارة شمسية حلوة وجديدة تقدرين تستخدميها في الأعراس", price:1, distance: 12.0, imagesURLS: ["kalifa"], availableTo: Date())
        products = [product,product2]
        
        // Do any additional setup after loading the view.
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            flowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // collection view data soource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let numOfItems = products.count
        print(numOfItems)
        return numOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("hi")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductViewCell
        // set values
        let product = products[indexPath.item]
        cell.productImagesView.image = UIImage(named: product.imagesURLS![0])
        cell.descriptionLabel.text = product.description
        cell.availableLabel.text = "من إلى"
        cell.distanceLabel.text = "\(product.distance!)كم"
        cell.priceLabel.text = "\(product.price!)"
        cell.perLabel.text = "ر.س/\(product.per!)"
        
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let viewWidth = collectionView.frame.width
        let margin = 10
        let cellWidth = viewWidth/2 - (margin*3)
        
        return CGSize(width: cellWidth, height: UIC)
        
    }
    
    
    
    

}
