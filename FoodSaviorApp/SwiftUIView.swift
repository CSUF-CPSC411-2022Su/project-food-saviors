//
//  SwiftUIView.swift
//  FoodSaviorApp
//
//  Created by csuftitan on 6/26/22.
//

import SwiftUI

struct Storage: View {
    @AppStorage("itemName") var itemName: String = ""
    var body: some View {
        Text(" We are here at alerts data!").bold()
        
            
           
           
                
                NavigationView {
                    VStack {
                        HStack {
                        Text("Data Submission")
                            .bold()
                            .font(.largeTitle)
                        }
                        .padding(.bottom, 30)

                        HStack {
                            Text("Item Name")
                                .bold()
                            Spacer()
                        }
                        HStack {
                            TextField("Item Name", text:$itemName)
                                                    
                            Spacer()
                        }
                        
                      
                    }
                    .padding()
                }
            }
        }
    

struct Storage_Previews: PreviewProvider {
    static var previews: some View {
        Storage()
    }
}
