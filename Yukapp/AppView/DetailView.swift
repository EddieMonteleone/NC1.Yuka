//
//  DetailView.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 14/11/23.
//

import SwiftUI
import SwiftData

struct DetailView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.colorScheme) var colorscheme
    var product:Product
    @State var isPressed: Bool = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                    /* Circle()
                     .fill(Color.yellow)
                     .frame(width: 400, height: 210)
                     .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                     .shadow(radius: 10)
                     // .padding()
                     */
                    HStack{
                        Image(product.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 500, height: 300, alignment: .trailing)
                            .padding(.leading,35)
                            .accessibilityHidden(true)
                        
                    }
                    VStack{
                        Button {
                            isPressed = true
                            modelContext.insert(DataFavorites(
                            name: product.name,
                            Brand: product.brand, 
                            image: product.image)
                            )
                            
                        }label: {
                            
                            if isPressed{
                                Image(systemName: "star.fill")
                                  
                            } else {
                                Image(systemName: "star")
                                    .foregroundColor(.black)
                               
                            }
                            
                        }
                        
                        
                        Text(product.name)
                            .font(.system(.largeTitle, design: .rounded))
                            .foregroundColor(colorscheme == .dark ? .white : .black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 300)
                        
                        Text (product.brand)
                            .font(.headline)
                            .foregroundColor(colorscheme == .dark ? .white : .gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 300)
                    }
                    .padding(.top, -100)
                }
                VStack{
                    Text ("Negative")
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(colorscheme == .dark ? .white : .black)
                        .frame(maxWidth:.infinity, alignment: .center)
                        .padding()
                    
                    VStack {
                        Text (product.negative)
                        Spacer()
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(colorscheme == .dark ? .white : .black)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }.frame(width: 370)
                    Spacer()
                    
                    VStack{
                        Text("Positive")
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(colorscheme == .dark ? .white : .black)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                        
                        Text (product.positive)
                        Spacer()
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(.black)  .foregroundColor(colorscheme == .dark ? .white : .black).frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                    }.frame(width: 370)
                    
                    
                    
                    Text("Suggestions")
                        .font(.system(.headline, design: .rounded))
                        .foregroundColor(colorscheme == .dark ? .white : .black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,110)
                    
                    ScrollView {
                        Section{
                            SuggestedView(initialProduct: product)
                                .padding(.leading,100)
                            
                            
                        }
                    }
                }
            }
            .navigationTitle("Details")
            .padding()
            
        }
            }
      
        }
        
    

    
    #Preview {
        DetailView(product:Product(name:"Gocciole", image:"gocciolep", brand: "Pavesi", positive: "Gocciole are popular for their rich flavor and appealing combination of crunchy biscuit with chocolate chips. They are convenient as quick snacks, easy to carry, and individually packaged for freshness. Suitable for many occasions, from afternoon tea to a coffee break, they offer a quintessential comfort food with a texture that satisfies sweet cravings.", negative: "Although tasty, Gocciole contain sugars and fats, which can be an issue for those on diets or with dietary restrictions. Their convenience may lead to overconsumption, which is not ideal for health. The packaging is not eco-friendly, and the production may not be sustainable. Additionally, they are not suitable for vegans or people with gluten or lactose allergies.", shufflePr: ProductModel()))
        
    }

