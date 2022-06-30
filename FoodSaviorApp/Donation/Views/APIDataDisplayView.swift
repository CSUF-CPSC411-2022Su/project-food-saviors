//
//  APIDataDisplayView.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/20/22.
//

import SwiftUI

struct APIView: View {
    @AppStorage("selection") var selection: String = "None"
    @State private var fetch = GoogleManager()
    @AppStorage("City") var City: String = ""
    @State private var searchWord = "NGO+Food+Collection+in+"
    @State private var searchWord1 = "Food+Pantry+in+"
    
    var body: some View {
        NavigationView {
            VStack {
                if selection == "NGO" {
                    Section(header: Text("NGO")) {
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(0..<9) { index in
                                
                                    GoogleView(index: index)
                                        .padding()
                                }
                                .padding()
                            }
                            Divider()
                                .onAppear {
                                    fetch.fetchGoogle(searchWord: searchWord+City)
                                }
                        }
                    }
                }
                if selection == "Donate" {
                    Section(header: Text("Donate")) {
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(0..<9) { index in
                                
                                    GoogleView(index: index)
                                        .padding()
                                }
                                .padding()
                            }
                            Divider()
                                .onAppear {
                                    fetch.fetchGoogle(searchWord: searchWord1+City)
                                }
                        }
                    }
                }
            }
        }
    }
}
