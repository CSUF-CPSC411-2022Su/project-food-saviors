//
//  Inventories.swift
//  FoodSaviorApp
//
//  Created by Sarthak Gajjar on 6/11/22.
//

import Foundation

import FirebaseFirestoreSwift

struct InventoryItem: Identifiable, Codable {
    @DocumentID var id: String?

    @ServerTimestamp var createdAt: Date?
    @ServerTimestamp var updatedAt: Date?

    var name: String
    var quantity: Int
    var exp_date: String
}
