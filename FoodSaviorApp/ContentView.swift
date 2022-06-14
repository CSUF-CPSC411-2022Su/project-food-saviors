
//  ContentView.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/8/22.

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        
            NavigationView {
                
                        VStack {
                            
                            NavigationLink(destination: InventoryView()) {
                                Text("Inventory")
                                    .frame(minWidth: 0, maxWidth: 300)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                                        .cornerRadius(40)
                                                        .font(.title)
                            }
                            NavigationLink(destination: DonationView()) {
                                Text("Donation")
                                    .frame(minWidth: 0, maxWidth: 300)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                                        .cornerRadius(40)
                                                        .font(.title)
                            }
                            NavigationLink(destination: RecipesView()) {
                                Text("Recipes")
                                    .frame(minWidth: 0, maxWidth: 300)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                                        .cornerRadius(40)
                                                        .font(.title)
                            }
                            
                            NavigationLink(destination: AlertsView()) {
                                Text("Alerts")
                                    .frame(minWidth: 0, maxWidth: 300)
                                                        .padding()
                                                        .foregroundColor(.white)
                                                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                                        .cornerRadius(40)
                                                        .font(.title)
                            }
                            
                            
                            
                           
                            
                            
                  
    }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
