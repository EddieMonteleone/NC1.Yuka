//
//  ContentView.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorscheme
    var viewModel = ProductModel( )
    var body: some View {
        NavigationStack {
            Spacer( minLength:30)
            VStack {
                List{
                    ForEach (viewModel.products) {product in
                        NavigationLink{
                            DetailView (
                                product:product)
                        }
                    label:
                        {
                            HStack{
                                Spacer()
                                Image(product.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100 )
                                    .lineSpacing(40.0)
                                    .frame(maxWidth:.infinity, alignment:.leading)
                                    .padding(.leading,30)
                                    }
                            .accessibilityElement(children: .ignore)
                            .accessibilityHidden(true)
                            HStack{
                                Text(product.name)
                                    .foregroundColor(colorscheme == .dark ? .white : .black)
                                    .frame( alignment: .leading)
                                    .padding(.leading)
                                Spacer()
                            }.frame(width: 330,height: 100)
                        }
                    }
                }
                .padding(.leading,-20)
                .padding(.trailing,-20)
                
            }
            .navigationTitle("History")
            .toolbar{
                ToolbarItem{
                    NavigationLink{
                        FavouritesView()
                    }
                label:
                    {
                        Text("Favourite")
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}




