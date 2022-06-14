
//  ContentView.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/8/22.

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        
            NavigationView {
                ZStack {
                            Text("")
                        .background(
                            Image("HomePage")
                                .resizable()
                                .edgesIgnoringSafeArea(.all)
                                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        )
                            VStack {
                                
                                NavigationLink(destination: InventoryView()) {
                                    Text("Inventory")
                                        .frame(minWidth: 0, maxWidth: 120)
                                                            .padding()
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing))
                                                            .cornerRadius(40)
                                                            .font(.title)
                                }
                                NavigationLink(destination: DonationView()) {
                                    Text("Donation")
                                        .frame(minWidth: 0, maxWidth: 120)
                                                            .padding()
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing))
                                                            .cornerRadius(40)
                                                            .font(.title)
                                }
                                NavigationLink(destination: RecipesView()) {
                                    Text("Recipes")
                                        .frame(minWidth: 0, maxWidth: 120)
                                                            .padding()
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing))
                                                            .cornerRadius(40)
                                                            .font(.title)
                                                            
                                }
                                
                                NavigationLink(destination: AlertsView()) {
                                    Text("Alerts")
                                        .frame(minWidth: 0, maxWidth: 120)
                                                            .padding()
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing))
                                                            .cornerRadius(40)
                                                            .font(.title)
                                }
                        
                    }.navigationTitle("Home")
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar{
                               ToolbarItemGroup(placement: .navigationBarTrailing){
                                   Button{print("Home icon pressed...")
                                  } label: {
                                       Label("HOME",systemImage: "house.fill")
                                   .foregroundColor(.black)
                                  }
                               }
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
