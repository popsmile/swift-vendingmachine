//
//  BananaMilk.swift
//  VendingMachine
//
//  Created by Eunjin Kim on 2018. 1. 11..
//  Copyright © 2018년 JK. All rights reserved.
//

import Foundation

class BananaMilk: Milk {
    private var bananaSyrup: Int = 1
    init(brand: String, weight: Int, price: Int, name: String, manufactureDate: Date, bananaSyrup: Int) {
        self.bananaSyrup = bananaSyrup
        super.init(brand: brand, weight: weight, price: price, name: name, manufactureDate: manufactureDate)
        super.typeOfBeverage = String(describing: type(of: self))
        super.kindOf = "바나나우유"
    }
    override var description: String {
        return "\(self.kindOf)(\(typeOfBeverage))\(super.description)"
    }
    
    func quantityOfBananaSyrup() -> Int {
        return self.bananaSyrup
    }
}