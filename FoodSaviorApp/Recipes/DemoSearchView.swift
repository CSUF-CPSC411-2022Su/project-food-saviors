//
//  DemoSearchView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 13/06/22.
//

import SwiftUI

struct DemoSearchView: View {
    let todoItems : [String] = [ todo(name:"Burrito"), todo(name:"xPizza")]
    @State private var searchText = ""
    var body: some View {
        DemoSearch(text: $searchText)
                            .padding(.top, -30)
        
        List(todoItems.filter({ searchText.isEmpty ? true : $0.name.contains(searchText) })) { item in
                           Text(item.name)
                       }
    }
}

struct DemoSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DemoSearchView()
    }
}
