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
            ZStack {
                Image("Kitchen_Blurred").resizable()

                VStack {
                    NavigationLink(destination: Inventory_Space1()) {
                        Text("Space 1").foregroundColor(Color.black).bold().padding()
                    }
                    NavigationLink(destination: Inventory_Space2()) {
                        Text("Space 2").foregroundColor(Color.black).bold().padding()
                    }
                    NavigationLink(destination: Inventory_Space3()) {
                        Text("Space 3").foregroundColor(Color.black).bold().padding()
                    }
                    NavigationLink(destination: Inventory_Space4()) {
                        Text("Space 4").foregroundColor(Color.black).bold().padding()
                    }
                    NavigationLink(destination: Inventory_Space5()) {
                        Text("Space 5").foregroundColor(Color.black).bold().padding()
                    }
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
