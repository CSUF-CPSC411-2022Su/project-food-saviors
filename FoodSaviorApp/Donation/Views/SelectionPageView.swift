//
//  SelectionPageView.swift
//  FoodSaviorApp
//
//  Created by csuftitan on 6/26/22.
//

import SwiftUI

struct SelectionPageView: View {
    
    @AppStorage("selection") var selection = "None"
    
    var body: some View {
            NavigationView {
                
                VStack{
                    
                
                HStack{
                   
                        Button(action: {
                            selection = "Donate"
                        }) {
                            Text("Donate")
                                .modifier(ButtonDesign())
                        }
                        Button(action: {
                            selection = "NGO"
                        }) {
                            Text("NGO")
                                .modifier(ButtonDesign())
                        }
                }
                
                    VStack{
                        NavigationLink(destination: DonationInventoryView()) {
                            Text("Submit")
                                .frame(minWidth: 0, maxWidth: 120)
                                                    .padding()
                                                    .foregroundColor(.black)
                                                    .cornerRadius(40)
                    }
                   
            }
    }
}
    }
}

struct SelectionPageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionPageView()
    }
}
