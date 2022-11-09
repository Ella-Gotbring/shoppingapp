//
//  Product.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var quantity: Int
}

var productList = [
    Product(name: "julkrans", image: "produkt1", price: 150, quantity: 1),
    Product(name: "julkulor", image: "produkt2", price: 100, quantity: 1),
    Product(name: "pepparkakshus", image: "produkt3", price: 250, quantity: 1),
    Product(name: "finful jultröja", image: "produkt4", price: 350, quantity: 1),
    Product(name: "pepparkaksgubbe", image: "produkt5", price: 50, quantity: 1),
    Product(name: "juldekoration", image: "produkt6", price: 450, quantity: 1),

]
