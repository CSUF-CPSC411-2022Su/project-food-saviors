//
//  FirebaseData.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/27/22.
//

import Foundation

struct Items: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var quantity: Int
    var exp_date: String
}
