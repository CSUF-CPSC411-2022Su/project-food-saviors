//
//  Inventory_Space1.swift
//  FoodSaviorApp
//
//  Created by Sarthak Gajjar on 6/11/22.
//


import SwiftUI
import FirebaseFirestoreSwift
import FirebaseFirestore

struct Inventory_Space1: View {
    
    @FirestoreQuery(collectionPath: "Inventory_Space") private var items: [InventoryItem]
    private let db = Firestore.firestore().collection("Inventory_Space")
    
    var body: some View {
        VStack{
            if let error = $items.error
            {
                Text(error.localizedDescription)
            }
            
            if items.count > 0
            {
                List
                {
                    ForEach(items)
                    {
                        item in
                        VStack{
                            TextField("Item Name", text: Binding<String>(
                                get: {item.name},
                                set: {updateItem(item, data: ["name": $0])}))
                            .disableAutocorrection(true)
                            .font(.headline)
                    
                            Stepper("Quantity: \(item.quantity)", value: Binding<Int> (
                                get:{item.quantity},
                                set:{ updateItem(item, data: ["quantity": $0 ])}),
                            in: 0...10000)
                            
                        //DatePicker("Expiration Date", selection: Binding<Date> (get: item.exp_date, set: {self.exp_date = $0})
                      //      , in: Date()..., displayedComponents: .date)
                            
                            DatePicker(selection: .constant(Date()), in: Date()... , displayedComponents: .date, label: { Text("Expiration Date") })
                        
                        }
                    }
                    .onDelete { onDelete(items: items, indexset: $0)}
                }
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("+") { addItem()}.font(.title)
            }
            
            ToolbarItem(placement: .navigationBarLeading) { EditButton() }
            
        }
    }
    
    private func addItem()
    {
        let item = InventoryItem(name: "New Item", quantity: 1)
        _ = try? db.addDocument(from: item)
    }
    
    
    private func updateItem(_ item: InventoryItem, data: [String: Any])
    {
        guard let id = item.id else {return}
        var _data = data
        _data["updatedAt"] = FieldValue.serverTimestamp()
        db.document(id).updateData(_data)
    }
        
    private func onDelete(items: [InventoryItem], indexset: IndexSet)
    {
        for index in indexset
        {
            guard let id = items[index].id else {continue}
            db.document(id).delete()
        }
    }
}

struct Inventory_Space1_Previews: PreviewProvider {
    static var previews: some View {
        Inventory_Space1()
    }
}
