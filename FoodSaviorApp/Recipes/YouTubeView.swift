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
    @Binding var data: String
    var body: some View {
        Text("Serarched for: "+self.data)
        WebView(url: URL(string: "https://www.youtube.com/results?search_query="+self.data)!, showLoading: $showLoading)
            .overlay(showLoading ? ProgressView("Loading...").toAnyView() : EmptyView().toAnyView())
           
    }
}

struct YouTubeView_Previews: PreviewProvider {
    @State static var data: String = ""
    static var previews: some View {
        YouTubeView(data: $data)
    }
}
