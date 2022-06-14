//
//  Donation-Inventory.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/11/22.
//

import SwiftUI

import Combine
class DonationDetails: ObservableObject{
    
    
    var didChange = PassthroughSubject<Void, Never>()
    
    static let item = ["Milk", "Flour", "Vegetables", "Eggs", "Bread", "Rice"]
    
    
    var item_no = 0 {didSet {update()}}
    var name = "" {didSet{update()}}
    var date = "" {didSet{update()}}
    var zip = "" {didSet{update()}}
    
    var isValid: Bool{
        if (name=="" || date=="" || zip==""){
            return false
        }
        return true
    }
    func update(){
        didChange.send(())
    }
    
    
}
struct DonationInventoryView: View {
    
    @ObservedObject var detail = DonationDetails()
    var body: some View {
        NavigationView{
           
            Form{
                
                Section{
                Picker(selection: $detail.item_no, label: Text("Select your item")){
                    ForEach(0..<DonationDetails.item.count, id:\.self){
                        Text(DonationDetails.item[$0]).tag($0)
                        
                    }
                }
                }
                Section{
                    TextField("Name" , text:$detail.name)
                    TextField("Date", text: $detail.date)
                    TextField("Zipcode" , text: $detail.zip)
                    

                }
                Section{
                    Button(
                        action:{
                            self.submit()
                        }){
                            Text("Submit")
                        }
                }//.disabled(detail.isValid==false)
                       
            }.navigationBarTitle(Text("Details"),displayMode: .inline
            )
    }
    }
    func submit(){
        
    }
}

struct DonationInventoryView_Previews: PreviewProvider {
    static var previews: some View {
        DonationInventoryView()
    }
}

