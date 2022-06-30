//
//  GoogleModel.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/27/22.
//

import Foundation

struct GoogleModel: Identifiable {
    let id = UUID()
    let title: [String?]
    let description: [String?]
    let link: [String?]
}

struct ItemsData {
    var allItems: [GoogleModel]
}

struct GoogleImage: Identifiable {
    let id = UUID()
    let image: [String?]
}

struct ImagesData {
    var allImages: [GoogleImage]
}
