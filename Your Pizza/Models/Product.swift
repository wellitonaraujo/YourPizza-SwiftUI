//
//  Product.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 09/09/23.
//

import Foundation

struct Product: Hashable, Identifiable, Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let carbs: Int
    let calories: Int
    let protein: Int
}

struct Response: Decodable {
    let request: [Product]
}

struct MockData {
    static let sampleProduct = Product(id: 01,
                                name: "Pizza Calabre",
                                description: "Piza boa e gostosa",
                                price: 34.90,
                                imageURL: "",
                                carbs: 99,
                                calories: 99,
                                protein: 99)
    
    static let products = [sampleProduct, sampleProduct, sampleProduct, sampleProduct]
}
