//
//  DataModel.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 22/11/23.
//

import Foundation
import SwiftData

@Model class DataFavorites{
    var name :String
    var Brand : String
    var image : String
    
    init(name: String, Brand: String, image: String) {
        self.name = name
        self.Brand = Brand
        self.image = image
    }
}
