//
//  SuggestedProduct.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 17/11/23.
//

import SwiftUI

struct SuggestedProduct: View {
    @Environment(\.colorScheme) var colorscheme
    var suggestedProduct:Product
    var body: some View {
        
        NavigationStack{
            ScrollView{
                ZStack{
                    HStack{
                        
                        /* Circle()
                         .fill(Color.yellow)
                         .frame(width: 400, height: 210)
                         .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                         .shadow(radius: 10)
                         .padding()
                         */
                        Image(suggestedProduct.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 500, height: 300, alignment: .trailing)
                            .padding(.leading,35)
                            .accessibilityHidden(true)
                        
                    }
                    VStack{
                        
                        Text(suggestedProduct.name)
                            .font(.system(.largeTitle, design: .rounded))
                            .foregroundColor(colorscheme == .dark ? .white : .black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 300)
                        
                        Text (suggestedProduct.brand)
                            .font(.headline)
                            .foregroundColor(colorscheme == .dark ? .white : .gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 300)
                    }
                }
                VStack{
                    Text ("Negative")
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(colorscheme == .dark ? .white : .black)
                        .frame(maxWidth:.infinity, alignment: .center)
                    
                    Text (suggestedProduct.negative)
                    Spacer()
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(colorscheme == .dark ? .white : .black)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                }.frame(width: 370)
                VStack{
                    Text("Positive")
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(colorscheme == .dark ? .white : .black)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    
                    Text (suggestedProduct.positive)
                    Spacer()
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(colorscheme == .dark ? .white : .black)
                        .frame(maxWidth: .infinity, alignment: .center)
                }.frame(width: 370)
            }
            .navigationTitle("Details")
        }
    }
}
            
            



#Preview {
    SuggestedProduct(suggestedProduct: Product(name:"Gocciole", image:"gocciolep", brand: "Pavesi", positive: "Gocciole are popular for their rich flavor and appealing combination of crunchy biscuit with chocolate chips. They are convenient as quick snacks, easy to carry, and individually packaged for freshness. Suitable for many occasions, from afternoon tea to a coffee break, they offer a quintessential comfort food with a texture that satisfies sweet cravings.", negative: "Although tasty, Gocciole contain sugars and fats, which can be an issue for those on diets or with dietary restrictions. Their convenience may lead to overconsumption, which is not ideal for health. The packaging is not eco-friendly, and the production may not be sustainable. Additionally, they are not suitable for vegans or people with gluten or lactose allergies.", shufflePr: ProductModel()))
}
