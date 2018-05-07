//
//  ProductsViewController.swift
//  Tajeer
//
//  Created by Omar on 03/05/2018.
//  Copyright © 2018 Omar. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ProductsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    //database
    var ref = DatabaseReference()
    
    //model
    var products:[Product] = []
    
    //cell sizes
    var cells : [ProductViewCell] = []

    //outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // collection view setup
        
        
        let product = Product(description: "نظارة شمس كيف كييييفك الأعراس", price:1, distance: 12.0, imagesURLS: ["kalifa"], availableTo: Date())
        let product2 = Product(description: "شي جمييييل", price:1, distance: 12.0, imagesURLS: ["kalifa"], availableTo: Date())
        let product3 = Product(description: "فنتكيييي جدا جدا جدا", price:1, distance: 12.0, imagesURLS: ["kalifa"], availableTo: Date())
        let product4 = Product(description: "عندي دباب متأكد انه بيعجب الجميع اللي وده فيه يطلبه الآن تراه رخيص جداً ولا بيكلفكم ولا شي", price:1, distance: 12.0, imagesURLS: ["kalifa"], availableTo: Date())
        products = [product,product2,product3,product4]
        
        // Do any additional setup after loading the view.
        
        
        //        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//
//            flowLayout.estimatedItemSize = CGSize(width: 50, height: 50 )
//
//        }
                
//        // database
//        ref = Database.database().reference()
//        
//        // auth
//        let userID = "2UhbalUcsBYUq5BJQF2lKnVLL5o2"
//        
//        //write
//        //self.ref.child("users").child(userID).setValue(["username":"Khalid"])
//        
//        //read
//        ref.child("users").child(userID).observeSingleEvent(of: .value, with: { (snapshot) in
//            // Get user value
//            let value = snapshot.value as? NSDictionary
//            let username = value?["username"] as? String ?? ""
//            print(username)
//            
//            // ...
//        }) { (error) in
//            print(error.localizedDescription)
//        }
//        
//        print("connecting .. ")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // collection view data soource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let numOfItems = products.count
        return numOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath:
        IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductViewCell
        // set values
        let product = products[indexPath.item]
        cell.productImagesView.image = UIImage(named: product.imagesURLS![0])
        cell.descriptionLabel.text = product.description
        cell.availableLabel.text = "من إلى"
        cell.distanceLabel.text = "\(product.distance!)كم"
        cell.priceLabel.text = "\(product.price!)"
        cell.perLabel.text = "ر.س/\(product.per!.rawValue)"
        cell.backgroundColor = .white
        //shadow
        cell.layer.shadowOffset = CGSize(width: 0, height: 1)
        cell.layer.shadowOpacity = 1.0;
        cell.layer.shadowRadius = 5;
        cell.layer.shadowColor = UIColor.black.cgColor
        //radius
        cell.layer.cornerRadius = 10
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = UIEdgeInsets(top: 10 , left: 10, bottom: 10, right: 10)
        print(inset)
        return inset
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let text = products[indexPath.item].description
        let textW = collectionView.frame.width - 50
        let size = CGSize(width: textW, height: 1000)
        let attributes = [kCTFontAttributeName:UIFont.systemFont(ofSize:18)]
        let estimatedFrame = NSString(string: text!).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes as [NSAttributedStringKey : Any], context: nil)
        return CGSize(width: collectionView.frame.width - 30, height: estimatedFrame.height + 336 )
        
    }
    
    
    
    

}
