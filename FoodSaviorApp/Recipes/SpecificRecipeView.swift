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
    @State var data:String = ""
    
    @State var showSearch: Bool = false
    
    @State var selection: Int? = nil
    var body: some View {

        NavigationView{
            
            
            VStack{
                TextField("Search Video", text: $data, onCommit: {
                    self.showSearch = true
                })
                    .padding()
                
                NavigationLink(destination: YouTubeView(data: $data), tag: 1, selection: $selection) {
                    
                    
                    
                    Button(action: {
                        self.data = data
                            print("login tapped")
                            self.selection = 1
                        }) {
                            HStack {
                                Spacer()
                                Text("Search").foregroundColor(Color.white).bold()
                                Spacer()
                            }
                        }
                        .accentColor(Color.black)
                        .frame(minWidth: 0, maxWidth: 300)
                        .padding()
                        .background(Color(UIColor.darkGray))
                        .cornerRadius(4.0)
                        .padding(Edge.Set.vertical, 20)
                }
    
            }
            
        }

        
    }
    
   
}
    
   

struct SpecificRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SpecificRecipeView()
    }
}
