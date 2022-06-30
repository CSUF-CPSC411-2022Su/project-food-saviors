//
//  Donation-Inventory.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/11/22.
//

import SwiftUI

struct DonationInventoryView: View {
    // @AppStorage("selection") var selection = "None"
    
    @ObservedObject private var viewModel = ItemsViewModel()
    @AppStorage("Name") var Name: String = ""
    @AppStorage("Date") var Date: String = ""
    @AppStorage("City") var City: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.items) { item in
                    VStack(alignment: .leading) {
                        HStack {
                            Text("\(item.name) , Qty-> \(item.quantity) , Exp_Date-> \(item.exp_date)")
                        }
                    }
                }
                
                TextField("Name", text: $Name)
                TextField("Date", text: $Date)
                TextField("City", text: $City)
                
                NavigationLink(destination: APIView()) {
                    Text("Submit")
                        .frame(minWidth: 0, maxWidth: 120)
                        .padding()
                        .foregroundColor(.black)
                        .cornerRadius(40)
                }
            }.navigationBarTitle(Text("Details"), displayMode: .inline)
                .onAppear {
                    self.viewModel.fetchData()
                }
        }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

struct DonationInventoryView_Previews: PreviewProvider {
    static var previews: some View {
        DonationInventoryView()
    }
}
