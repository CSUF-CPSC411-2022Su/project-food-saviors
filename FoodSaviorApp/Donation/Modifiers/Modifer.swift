//
//  Modifer.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/27/22.
//
import SwiftUI

struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: 120)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .font(.title)
    }
}
