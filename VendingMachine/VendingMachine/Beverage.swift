//
//  Beverage.swift
//  VendingMachine
//
//  Created by TaeHyeonLee on 2017. 12. 7..
//  Copyright © 2017 ChocOZerO. All rights reserved.
//

import Foundation

class Beverage: CustomStringConvertible {
    let brand: String
    let weight: Int
    let price: Int
    let name: String
    let dateOfManufacture: Date

    init(brand: String, weight: Int, price: Int, name: String) {
        self.brand = brand
        self.weight = weight
        self.price = price
        self.name = name
        var dateComponents = DateComponents()
        dateComponents.year = 2017
        dateComponents.month = 12
        dateComponents.day = 7
        dateComponents.timeZone = TimeZone(abbreviation: "KST")
        let calendar = Calendar.current
        self.dateOfManufacture = calendar.date(from: dateComponents)!
    }

    var description: String {
        return "\(brand), \(weight)ml, \(price)원, \(name), \(getStringFromDate(date: dateOfManufacture))"
    }

    private func getStringFromDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        return dateFormatter.string(from: date)
    }

}