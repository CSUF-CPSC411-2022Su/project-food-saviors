
//  ContentView.swift
//  FoodSaviorApp
//
//  Created by csuftitan on 6/8/22.

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        
        //Home Page View
        
            NavigationView {
                Form{
                    Section{
                        VStack {
                            Button(action: {
                                    print("Inventory Action")
                                }, label: {
                                    Text("Inventory")
                                        .bold()
                                        .frame(width: 250, height: 65)
                                        .foregroundColor(Color.white)
                                        .background(Color.gray)
                                        .cornerRadius(8)
                                        .padding(35)
                            })
                            Button(action: {
                                    print("Donation Action")
                                }, label: {
                                    Text("Donation")
                                        .bold()
                                        .frame(width: 250, height: 65)
                                        .foregroundColor(Color.white)
                                        .background(Color.gray)
                                        .cornerRadius(8)
                                        .padding(35)
                            })
                            Button(action: {
                                    print("Recipes Action")
                                }, label: {
                                    Text("Recipes")
                                        .bold()
                                        .frame(width: 250, height: 65)
                                        .foregroundColor(Color.white)
                                        .background(Color.gray)
                                        .cornerRadius(8)
                                        .padding(35)
                            })
                            Button(action: {
                                    print("Alert Action")
                                }, label: {
                                    Text("Alerts")
                                        .bold()
                                        .frame(width: 250, height: 65)
                                        .foregroundColor(Color.white)
                                        .background(Color.gray)
                                        .cornerRadius(8)
                                        .padding(35)
                            })
                            
                    }.background(Color("AccentColor"))
                        
                    }
                    
                }.navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar{
                        ToolbarItemGroup(placement: .navigationBarTrailing){
                            Button{print("Home icon pressed...")
                            } label: {
                                Label("HOME",systemImage: "house.fill")
                            }.foregroundColor(.black)
                        }
                    }
    }
        HStack{
            Text("We are here to help you save food!!!")
                .bold()
                .foregroundColor(Color.black)
                                            
                   
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
