//
//  RecipesView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 10/06/22.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            NavigationView {
                HStack {
                    NavigationLink(destination: SpecificRecipeView()) {
                        Text("Find a specific recipe")
                            .frame(minWidth: 0, maxWidth: 100)
                                                .padding(30)
                                                .foregroundColor(.white)
                                                .background(LinearGradient(gradient: Gradient(colors: [Color.black ]), startPoint: .leading, endPoint: .trailing))
                                                .cornerRadius(40)
                                                .font(.body)
                    }
                    .padding()
                    NavigationLink(destination: SearchBasedOnIngredientsView()) {
                        Text("Based on ingrediants you have")
                            .frame(minWidth: 0, maxWidth: 100)
                                                .padding(30)
                                                .foregroundColor(.white)
                                                .background(LinearGradient(gradient: Gradient(colors: [Color.black ]), startPoint: .leading, endPoint: .trailing))
                                                .cornerRadius(40)
                                                .font(.body)
                    }
                    .padding()
                    .navigationTitle("Find a recipe")
                }
            }
            
        }
        
        VStack {
            
           
                GroupBox(label: Text("Ultimate Juicy Burger Recipe - Perfect Burgers Every Time 🍔")) {
                    Text("he Perfect Juicy Burger Recipe! We partnered with Beef. It’s What’s for Dinner. to show you all of our secrets and tips for grilling the best burgers! I hope Chuck Knows Beef makes your time in the kitchen easier!")
                    Text("By Natashas Kitchen")
                }
            GroupBox(label: Text("The Best Homemade Pizza You'll Ever Eat")) {
                Text("Get the recipe for the best homemade pizza")
                Text("By Tasty")
            }
            GroupBox(label: Text("How To Make The Best French Toast")) {
                Text("This iconic dish is all about the details. While french toast might seem simple, looks can be deceiving. To get that perfectly crispy exterior and creamy, silky custard on the inside we spent weeks eating tons of butter, bread, and syrup to discover the best classic french toast recipe. The end result is indulgent, delicious, and most importantly, easy to make. What’s not to love?")
                Text("By Tasty")
            }
            GroupBox(label: Text("Flourless Moist Chocolate Cake / Gluten Free / No Flour")) {
                Text("Flourless Chocolate Cake (pan size 38 x 26 cm or 15 x 10 in 1 cup = 240ml; 1 tbsp = 15ml; 1 tsp = 5ml")
                Text("By Thy Than")
            }
            GroupBox(label: Text("How to Make Egg Pasta (an in-depth guide)")) {
                Text("How to Make Egg Pasta (an in-depth guide) 00 flour vs all-purpose, food processor vs the well method, rolling pin vs machine")
                Text("By Helen Rennie")
            }
                
            
            
        }
        
       
       
        
    }
}



struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipesView()
                .previewInterfaceOrientation(.portrait)
            RecipesView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
