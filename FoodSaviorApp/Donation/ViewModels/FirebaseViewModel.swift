//
//  FirebaseViewModel.swift
//  FoodSaviorApp
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import FirebaseFirestore

class ItemsViewModel: ObservableObject{
    @Published var items = [Items]()
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("Inventory_Space").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else{
                print("No Documents")
                return
            }
    
            self.items = documents.map{ (QueryDocumentSnapshot) -> Items in
            let data = QueryDocumentSnapshot.data()
            
            let name = data["name"] as? String ?? ""
            let quantity = data["quantity"] as? Int ?? 0
            let exp_date = data["exp_date"] as? String ?? ""
            
            return Items(name: name, quantity: quantity, exp_date: exp_date)
            
            
        }
    
}
}
}
