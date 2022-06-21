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
                    .navigationTitle("Find a recipe")
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
                    .navigationTitle("Search based on ingredients")
                    
                    NavigationLink(destination: ListVideos()) {
                        Text("Recipe Recommendation")
                            .frame(minWidth: 0, maxWidth: 100)
                            .padding(30)
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.black ]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(40)
                            .font(.body)
                    }
                    
                    .padding()
                    .navigationTitle("Search based on ingredients")
                    
                    
                    
                    
                }
                
                
                
                
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
