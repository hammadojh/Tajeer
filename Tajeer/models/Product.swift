//
//  Product.swift
//  Tajeer
//
//  Created by Omar on 03/05/2018.
//  Copyright © 2018 Omar. All rights reserved.
//

import Foundation

// Per Enum

enum Per : String  {
    case Hour = "ساعة"
    case Day = "يوم"
    case Week = "اسبوع"
    case Month = "شهر"
}

// Prodcut Class

class Product {
 
    var description:String?
    var price:Double?
    var per:Per?
    var distance:Double?
    var imagesURLS:[String]?
    var availableFrom:Date?
    var availableTo:Date?
    
    init(description:String, price:Double = 0, per:Per = .Hour , distance:Double? , imagesURLS:[String]?, availableFrom:Date = Date() , availableTo:Date? ) {
        
        self.description = description
        self.price = price
        self.per = per
        self.distance = distance
        self.imagesURLS = imagesURLS
        self.availableFrom = availableFrom
        self.availableTo = availableTo
        
    }
    
}
