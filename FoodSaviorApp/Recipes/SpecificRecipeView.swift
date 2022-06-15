//
//  SpecificRecipeView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 12/06/22.
//

import SwiftUI

struct SpecificRecipeView: View {
    private var videoList = recipeList
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes, id: \.self) {
                    country in
                    HStack {
                        Text(country.capitalized)
                        Spacer()
                        Image(systemName: "takeoutbag.and.cup.and.straw")
                            .foregroundColor(Color.blue)
                    }
                    .padding()
                }
                
            }
            .searchable(text: $searchText)
            .navigationTitle("Search Recipes")
        }
    }
    
    var recipes: [String] {
        let lcVideoList = videoList.map {
            $0.lowercased()
        }
        return searchText == "" ? lcVideoList : lcVideoList.filter{
            $0.contains(searchText.lowercased())
        }
    }
}
    
   

struct SpecificRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SpecificRecipeView()
    }
}
