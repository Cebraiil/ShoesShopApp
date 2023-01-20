//
//  Product.swift
//  ShoppingApp
//
//  by Swiftui.app on 19.01.2023.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "original boots", image: "shoes3", price: 1600),
                   Product(name: "running shoes", image: "shoes1", price: 450),
                   Product(name: "knotted boots", image: "shoes8", price: 1150),
                   Product(name: "Brown boots", image: "shoes7", price: 1200),
                   Product(name: "flexible boot", image: "shoes5", price: 970),
                   Product(name: "running shoes", image: "shoes2", price: 1200),
                   Product(name: "casual shoes", image: "shoes4", price: 1200),
                   Product(name: "casual shoes", image: "shoes6", price: 1200),]
