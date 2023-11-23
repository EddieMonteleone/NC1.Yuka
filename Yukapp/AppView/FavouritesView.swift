//
//  FavouritesView.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 22/11/23.
//

import SwiftUI
import SwiftData

struct FavouritesView: View {
    
    @Query var fav: [DataFavorites]
    
    var body: some View {
        NavigationStack {
            Spacer( minLength:30)
            VStack {
                List{
                    ForEach (fav) {product in
                      
                            HStack{
                                Spacer()
                                Image(product.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100 )
                                    .lineSpacing(40.0)
                                    .frame(maxWidth:.infinity, alignment:.leading)
                                    .padding()
                                    .accessibilityHidden(true)
                                Text(product.name)
                                    .frame( alignment: .leading)
                                    .padding(.leading,-200)
                                Spacer()
                            }.frame(width: 370)
                    }
                }
                .padding(-20)
            }
            .navigationTitle("History")
        }
    }
}


#Preview {
    FavouritesView()
}
