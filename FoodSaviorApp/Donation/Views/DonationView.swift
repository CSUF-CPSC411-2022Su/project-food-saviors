//
//  DonationView.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 10/06/22.
//

import SwiftUI

struct DonationView: View {
    
    @AppStorage("selection") var selection = "None"
    
    var body: some View {
            NavigationView {

                        VStack {
                            
                                Spacer()
                                VStack{
                                    NavigationLink(destination: SelectionPageView()) {
                                       
                                        Text("Choose Anyone").foregroundColor(.black)
                    
                                    }
                                }
                                    Spacer()
                                HStack{
                                    Image("Donation Feature")
                                                .resizable()
                                                .scaledToFit()
                                    
                                }
                            
                        }.navigationTitle("Want to Share Food ?")
                         .navigationBarTitleDisplayMode(.inline)}
                            
                        
               
           
            }
            
        }

    struct DonationView_Previews: PreviewProvider {
        static var previews: some View {
            DonationView()
        }
    }
