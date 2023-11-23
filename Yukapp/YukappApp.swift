//
//  YukappApp.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 14/11/23.
//

import SwiftUI
import SwiftData

@main
struct YukappApp: App {
    var body: some Scene {
        WindowGroup {
            
            ContentView()
        }
     .modelContainer(for: DataFavorites.self)
    }
}
