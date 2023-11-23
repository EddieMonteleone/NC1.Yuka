//
//  SuggestedView.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 17/11/23.
//

import SwiftUI

struct SuggestedView: View {
    @Environment(\.colorScheme) var colorscheme
    var initialProduct : Product
    
    let rows = [GridItem(.adaptive(minimum: 150, maximum: 150))]
    
    func filteredSuggestions() -> [Product] {
        var products = (initialProduct.shufflePr.products).filter { $0.name != self.initialProduct.name }
        return products.shuffled()
    }

    
    var body: some View {
        ScrollView(.horizontal){
            Section{
                LazyHGrid(rows: rows) {
                    HStack {
                        ForEach(filteredSuggestions().prefix(2))
                        { product in
                            
                            NavigationLink{
                                SuggestedProduct (
                                    suggestedProduct:product)
                            }
                        label:{
                            VStack {
                                Image (product.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80 )
                                    .lineSpacing(40.0)
                                    .accessibilityHidden(true)
                                Text(product.name)
                                    .foregroundColor(colorscheme == .dark ? .white : .black)
                                    .frame(maxWidth:.infinity, alignment: .center)
                        
                                    .padding()
                                
                            }
                        }
                        }
                    }
                }
                
            }
        }
    }
}
#Preview {
    SuggestedView(initialProduct:Product(name:"Gocciole", image:"gocciole", brand: "Pavesi", positive: "Gocciole are popular for their rich flavor and appealing combination of crunchy biscuit with chocolate chips. They are convenient as quick snacks, easy to carry, and individually packaged for freshness. Suitable for many occasions, from afternoon tea to a coffee break, they offer a quintessential comfort food with a texture that satisfies sweet cravings.", negative: "Although tasty, Gocciole contain sugars and fats, which can be an issue for those on diets or with dietary restrictions. Their convenience may lead to overconsumption, which is not ideal for health. The packaging is not eco-friendly, and the production may not be sustainable. Additionally, they are not suitable for vegans or people with gluten or lactose allergies.", shufflePr: ProductModel()))
}
