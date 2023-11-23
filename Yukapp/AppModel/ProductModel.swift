//
//  ProductModel.swift
//  Yukapp
//
//  Created by Edoardo Monteleone on 15/11/23.
//

import Foundation
class ProductModel{
    var products: [Product] = []
    
    
    init() {
        self.products = [
            Product(name: "Gocciole", 
                    image: "gocciole",
                    brand: "Pavesi",
                    positive: "Gocciole are popular for their rich flavor and appealing combination of crunchy biscuit with chocolate chips. They are convenient as quick snacks, easy to carry, and individually packaged for freshness. Suitable for many occasions, from afternoon tea to a coffee break, they offer a quintessential comfort food with a texture that satisfies sweet cravings.",
                    negative: "Although tasty, Gocciole contain sugars and fats, which can be an issue for those on diets or with dietary restrictions. Their convenience may lead to overconsumption, which is not ideal for health. The packaging is not eco-friendly, and the production may not be sustainable. Additionally, they are not suitable for vegans or people with gluten or lactose allergies.",
                    shufflePr: self),
            Product(name: "Pan di Stelle", 
                    image: "pandistelle",
                    brand: "Mulino Bianco",
                    positive: "Pan di stelle are renowned for their rich flavor and the captivating combination of crunchy biscuit with star-shaped chocolate pieces. They are practical as quick snacks, easily portable, and individually wrapped to maintain freshness. Ideal for various settings, from afternoon tea to a coffee break, they provide a classic comfort food with a satisfying texture.",
                    negative:"Though delicious, Pan di stelle contain sugars and fats, which could be problematic for those on diets or with dietary restrictions. Their convenience could lead to overeating, which isn't healthy. The packaging isn't environmentally friendly, and the manufacturing might not be sustainable. Also, they are not suitable for vegans or individuals with allergies to gluten or lactose.",
                    shufflePr: self),
            Product(name: "Macine", 
                    image: "macine",
                    brand: "Multino Bianco",
                    positive: "Macine are esteemed for their full-bodied taste and the enticing blend of crunchy biscuit with chocolate bits. They're handy for fast snacking, easy to transport, and singularly sealed for peak freshness. Appropriate for numerous occasions, from a mid-afternoon tea to a coffee pause, they represent the epitome of comfort food with a gratifying texture.",
                    negative: "Despite being flavorful, Macine have sugars and fats, posing a concern for diet-watchers or those with food sensitivities. Their handiness might encourage excessive consumption, which is suboptimal for health. The packaging isn't green, and the production could be non-eco-friendly. Moreover, they're unsuitable for vegans or those with gluten or lactose intolerances.",
                    shufflePr: self),
            Product(name: "Lotus", 
                    image: "lotus",
                    brand: "Biscoff",
                    positive: "Lotus cookies are acclaimed for their distinctive taste and the alluring combination of a crunchy biscuit with chocolate drops. They are practical for quick snacking, portable, and individually packed to ensure freshness. Suitable for a variety of instances, from tea time to a coffee interlude, they offer a supreme comfort food with a pleasingly sweet texture.",
                    negative: "While delectable, Lotus cookies include sugars and fats, which may be a concern for individuals with dietary restrictions or those following specific diets. The convenience they offer may promote overindulgence, which is not conducive to good health. The packaging is not eco-conscious, and the production may lack sustainability. They also are not fit for vegans or those with allergies to gluten or lactose.",
                    shufflePr: self),
            Product(name: "Baiocchi", 
                    image: "baiocchi",
                    brand: "Mulino Bianco",
                    positive: "Baiocchi cookies are prized for their sumptuous flavor and the engaging mix of crunchy biscuit filled with hazelnut and chocolate cream. They're optimal for snappy snacking, easy to carry, and individually wrapped to preserve freshness. Fit for various occasions, from a relaxing tea time to a coffee respite, they provide a premium comfort food experience with a delightful texture.",
                    negative: "Tasty as they are, Baiocchi include sugars and fats, which could be a concern for diet enthusiasts or those with dietary limitations. Their convenience might tempt one into overindulgence, which is not favorable for one's health. The packaging is not sustainable, and the manufacturing might not adhere to eco-friendly practices. Furthermore, they're not appropriate for vegans or individuals with gluten or lactose allergies.", 
                    shufflePr: self),
            Product(name: "Oreo", 
                    image: "oreo",
                    brand: "Mondelez",
                    positive: "Oreo cookies are famed for their unique flavor, with a creamy filling sandwiched between two chocolate biscuits. They are versatile, used in various desserts, and come in a convenient package perfect for on-the-go snacking. Their global brand recognition makes them a staple treat in numerous households",
                    negative: "Oreo cookies are high in sugars and fats, posing potential health issues for those with dietary concerns. The ease of consumption might lead to overeating, and the non-recyclable packaging raises environmental concerns. Additionally, they are not suitable for those with gluten intolerance or a vegan lifestyle without specific labeling.",
                    shufflePr: self)
        ]
    }
    
    
//    var products = [
//        Product(name: "Gocciole", image: "gocciole",brand: "Pavesi", positive: "Gocciole are popular for their rich flavor and appealing combination of crunchy biscuit with chocolate chips. They are convenient as quick snacks, easy to carry, and individually packaged for freshness. Suitable for many occasions, from afternoon tea to a coffee break, they offer a quintessential comfort food with a texture that satisfies sweet cravings.", negative: "Although tasty, Gocciole contain sugars and fats, which can be an issue for those on diets or with dietary restrictions. Their convenience may lead to overconsumption, which is not ideal for health. The packaging is not eco-friendly, and the production may not be sustainable. Additionally, they are not suitable for vegans or people with gluten or lactose allergies.", shufflePr: ),
//    Product(name: "Pan di Stelle", image: "pandistelle", brand: "Mulino Bianco", positive: "Pan di stelle are renowned for their rich flavor and the captivating combination of crunchy biscuit with star-shaped chocolate pieces. They are practical as quick snacks, easily portable, and individually wrapped to maintain freshness. Ideal for various settings, from afternoon tea to a coffee break, they provide a classic comfort food with a satisfying texture.", negative:"Though delicious, Pan di stelle contain sugars and fats, which could be problematic for those on diets or with dietary restrictions. Their convenience could lead to overeating, which isn't healthy. The packaging isn't environmentally friendly, and the manufacturing might not be sustainable. Also, they are not suitable for vegans or individuals with allergies to gluten or lactose."),
//    Product(name: "Macine", image: "macine", brand: "Multino Bianco", positive: "Macine are esteemed for their full-bodied taste and the enticing blend of crunchy biscuit with chocolate bits. They're handy for fast snacking, easy to transport, and singularly sealed for peak freshness. Appropriate for numerous occasions, from a mid-afternoon tea to a coffee pause, they represent the epitome of comfort food with a gratifying texture.", negative: "Despite being flavorful, Macine have sugars and fats, posing a concern for diet-watchers or those with food sensitivities. Their handiness might encourage excessive consumption, which is suboptimal for health. The packaging isn't green, and the production could be non-eco-friendly. Moreover, they're unsuitable for vegans or those with gluten or lactose intolerances."),
//    Product(name: "Lotus", image: "lotus", brand: "Biscoff", positive: "Lotus cookies are acclaimed for their distinctive taste and the alluring combination of a crunchy biscuit with chocolate drops. They are practical for quick snacking, portable, and individually packed to ensure freshness. Suitable for a variety of instances, from tea time to a coffee interlude, they offer a supreme comfort food with a pleasingly sweet texture.", negative: "While delectable, Lotus cookies include sugars and fats, which may be a concern for individuals with dietary restrictions or those following specific diets. The convenience they offer may promote overindulgence, which is not conducive to good health. The packaging is not eco-conscious, and the production may lack sustainability. They also are not fit for vegans or those with allergies to gluten or lactose."),
//    Product(name: "Baiocchi", image: "baiocchi", brand: "Mulino Bianco", positive: "Baiocchi cookies are prized for their sumptuous flavor and the engaging mix of crunchy biscuit filled with hazelnut and chocolate cream. They're optimal for snappy snacking, easy to carry, and individually wrapped to preserve freshness. Fit for various occasions, from a relaxing tea time to a coffee respite, they provide a premium comfort food experience with a delightful texture.", negative: "Tasty as they are, Baiocchi include sugars and fats, which could be a concern for diet enthusiasts or those with dietary limitations. Their convenience might tempt one into overindulgence, which is not favorable for one's health. The packaging is not sustainable, and the manufacturing might not adhere to eco-friendly practices. Furthermore, they're not appropriate for vegans or individuals with gluten or lactose allergies."),
//    Product(name: "Oreo", image: "oreo", brand: "Mondelez", positive: "Oreo cookies are famed for their unique flavor, with a creamy filling sandwiched between two chocolate biscuits. They are versatile, used in various desserts, and come in a convenient package perfect for on-the-go snacking. Their global brand recognition makes them a staple treat in numerous households", negative: "Oreo cookies are high in sugars and fats, posing potential health issues for those with dietary concerns. The ease of consumption might lead to overeating, and the non-recyclable packaging raises environmental concerns. Additionally, they are not suitable for those with gluten intolerance or a vegan lifestyle without specific labeling.")
//    ]

}
