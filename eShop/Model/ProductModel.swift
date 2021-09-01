//
//  ProductModel.swift
//  eShop
//
//  Created by Halisson da Silva Jesus on 25/08/21.
//

import Foundation

struct ProductModel: Identifiable {
    var id = UUID()
    var name: String
    var author: String
    var imageName: String
    var ratingImageName: String
    var price: String
}

struct ProductModelFactory {
    static var productList = [ProductModel(name: "Evening Dress1", author: "Dorothy Perkins", imageName: "pinkDress1", ratingImageName: "fiveStars", price: "12,00"),
                              ProductModel(name: "Evening Dress2", author: "Dorothy Perkins", imageName: "pinkDress1", ratingImageName: "fiveStars", price: "12,00")]
}
