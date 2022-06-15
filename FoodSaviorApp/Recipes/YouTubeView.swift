//
//  YouTubeView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 15/06/22.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}

struct YouTubeView: View {
    @State private var showLoading: Bool = false
    var body: some View {
        let key1 = "burger"
        WebView(url: URL(string: "https://www.youtube.com/")!, showLoading: $showLoading)
            .overlay(showLoading ? ProgressView("Loading...").toAnyView() : EmptyView().toAnyView())
           
    }
}

struct YouTubeView_Previews: PreviewProvider {
    static var previews: some View {
        YouTubeView()
    }
}
