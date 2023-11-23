//
//  Product.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 14/11/23.
//

import Foundation
struct Product: Identifiable {
    
    var id: UUID = UUID()
    
    let name: String
    let image: String
    let brand: String
    let positive: String
    let negative: String
    let shufflePr: ProductModel
    
    
}
