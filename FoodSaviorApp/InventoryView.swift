//
//  InventoryView.swift
//  FoodSaviorApp
//
//  Created by Sarthak Gajjar on 10/06/22.
//


import SwiftUI

struct InventoryView: View {


    var body: some View {
        Text("Inventory")
        
        NavigationView {
                       
                               VStack {
                                   
                                   NavigationLink(destination: Inventory_Space1())
                                   {
                                       Text("Space 1") .bold() .padding()
                                   }
                                   NavigationLink(destination: Inventory_Space2())
                                   {
                                       Text("Space 2") .bold() .padding()
                                   }
                                   NavigationLink(destination: Inventory_Space3())
                                   {
                                       Text("Space 3") .bold() .padding()
                                   }
                                   NavigationLink(destination: Inventory_Space4())
                                   {
                                       Text("Space 4") .bold() .padding()
                                   }
                                   NavigationLink(destination: Inventory_Space5())
                                   {
                                       Text("Space 5") .bold() .padding()
                                   }
                               }
        }
    }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView()
    }
}
    
