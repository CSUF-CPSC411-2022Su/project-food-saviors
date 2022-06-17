//
//  RecipesView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 10/06/22.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SpecificRecipeView()) {
                    Text("Find a specific recipe")
                        .frame(minWidth: 0, maxWidth: 300)
                                            .padding()
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.black ]), startPoint: .leading, endPoint: .trailing))
                                            .cornerRadius(40)
                                            .font(.title)
                }
                NavigationLink(destination: SearchBasedOnIngredientsView()) {
                    Text("Search recipe based on ingrediants you have")
                        .frame(minWidth: 0, maxWidth: 300)
                                            .padding()
                                            .foregroundColor(.white)
                                            .background(LinearGradient(gradient: Gradient(colors: [Color.black ]), startPoint: .leading, endPoint: .trailing))
                                            .cornerRadius(40)
                                            .font(.title)
                }
//                NavigationLink(destination: YouTubeView()) {
//                    Text("Youtube view")
//                        .frame(minWidth: 0, maxWidth: 300)
//                                            .padding()
//                                            .foregroundColor(.white)
//                                            .background(LinearGradient(gradient: Gradient(colors: [Color.black ]), startPoint: .leading, endPoint: .trailing))
//                                            .cornerRadius(40)
//                                            .font(.title)
//                }
//
                .navigationTitle("Navigation")
            }
        }
        
    }
}



struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
