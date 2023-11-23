//
//  Detail.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 15/11/23.
//

import Foundation
struct Detail: Identifiable {
    var id: UUID = UUID()
    
    let image: String
    let name: String
    let brand: String
    let positive: String
    let negative: String
}
