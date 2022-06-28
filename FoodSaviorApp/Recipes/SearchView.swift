//
//  SearchView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 28/06/22.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var youtubeVideoViewModel = YoutubeVideoViewModel()
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            VStack {
                
                
                
                TextField("Search", text: $searchText) { isEditing in
                    print("isEditing", isEditing)
                } onCommit: {
                    print("onCommit do something when hitting enter", searchText)
                    youtubeVideoViewModel.fetchVideoWithSeach(searchText: searchText.replacingOccurrences(of: " ", with: "%20"))
                }
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                List {
                    ForEach(0..<youtubeVideoViewModel.youtubeSearchItems.count, id: \.self) { index in
                        HStack {
                            URLImage(url: youtubeVideoViewModel.youtubeSearchItems[index].snippet.thumbnails.high?.url ?? "")
                                .aspectRatio(contentMode: .fit).background(Color.blue)
                            VStack {

                                Link(destination: URL(string: "https://youtu.be/"+youtubeVideoViewModel.youtubeSearchItems[index].id.videoId)!, label: {
                                    Text(youtubeVideoViewModel.youtubeSearchItems[index].snippet.title)
                                        .bold()
                                        .font(.system(size: 16))
                                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 5))
                                    Text(youtubeVideoViewModel.youtubeSearchItems[index].snippet.description)
                                        .font(.system(size: 12))
                                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                                })
                            }
                        }.frame(width: .none, height: 150, alignment: .center)
                    }
                }
            }
            .navigationTitle("Recipe Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
