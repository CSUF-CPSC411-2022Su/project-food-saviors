//
//  SpecificRecipeView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 12/06/22.
//

import SwiftUI

struct SpecificRecipeView: View {
    @State private var searchVideo = ""
    
    var body: some View {
        NavigationView {
            Text(searchVideo == "" ? "" : "Searching for \(searchVideo)")
            .searchable(text: $searchVideo, prompt: "Looking for")
            .navigationTitle("Search Recipe")
            
                    
            
            
        }
    }
}
    
   

struct SpecificRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SpecificRecipeView()
    }
}
