//
//  DonationView.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 10/06/22.
//

import SwiftUI

struct DonationView: View {
    var body: some View {
        NavigationView {

                    VStack {
                        
                        
                        VStack{
                            VStack{
                                Text("Choose Anyone")
                            }
                            
                            Spacer()
                            VStack{
                            HStack{
                                NavigationLink(destination: DonationInventoryView()) {
                                    Text("Donate")
                                        .frame(minWidth: 0, maxWidth: 120)
                                                            .padding()
                                                            .foregroundColor(.white)
                                                            .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.orange]), startPoint: .leading, endPoint: .trailing))
                                                            .cornerRadius(40)
                                                            .font(.title)
                                }
                                    NavigationLink(destination: DonationInventoryView()) {
                                        Text("NGO")
                                            .frame(minWidth: 0, maxWidth: 120)
                                                                .padding()
                                                                .foregroundColor(.white)
                                                                .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.orange]), startPoint: .leading, endPoint: .trailing))
                                                                .cornerRadius(40)
                                                                .font(.title)
                            }
                        
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
}
struct DonationView_Previews: PreviewProvider {
    static var previews: some View {
        DonationView()
    }
}

