//
//  SearchBasedOnIngredientsView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 12/06/22.
//

import SwiftUI

struct YoutubeSearchList: Codable {
    let kind: String
    let etag: String
    let nextPageToken: String
    let regionCode: String
    let items: [YouTubeSearchItem]
}

struct YouTubeSearchItem: Codable {
    let id: YouTubeId
    let snippet: Snippet
}

struct YouTubeId: Codable {
    let kind: String
    let videoId: String
}

struct Snippet: Codable {
    let title: String
    let description: String
    let thumbnails: ThumbnailInfo
    let channelId: String
}

struct ThumbnailInfo: Codable {
    let `default`: ThumbDefaultInfo?
    let high: ThumbHighInfo?
}

struct ThumbDefaultInfo: Codable {
    let url: String
    let width: Int
    let height: Int
}

struct ThumbHighInfo: Codable {
    let url: String
    let width: Int
    let height: Int
}

class YoutubeVideoViewModel: ObservableObject {

    let youtubeApiService = YoutubeApiService()
    @Published var youtubeSearchList: YoutubeSearchList?
    @Published var youtubeSearchItems = [YouTubeSearchItem]()

    func fetchVideoWithSeach(searchText: String) {
        youtubeApiService.fetchYouTubeVideos(searchText: searchText) { [weak self] youtubeSearchList in
            self?.youtubeSearchItems = youtubeSearchList.items
        }
    }
}

struct YoutubeApiService {

    public func fetchYouTubeVideos(searchText: String, completion: @escaping (YoutubeSearchList) -> Void) {
        // As default, api returns only 5 results so I added a "maxResults" parameter to 15 to fetch more results
        let apiKey = "AIzaSyBQ9_Q_cR0JOW82XVtPwvw04RDkI301dd4"
        let urlString = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=\(searchText)%20recipe&regionCode=US&maxResults=15&type=video&key=\(apiKey)"
        guard let url = URL(string: urlString) else {return}

        let task = URLSession.shared.dataTask(with: url) { jsonData, response, err in
            if let err = err {
                print("Error: Failed to get json data", err.localizedDescription)
                return
            }

            guard let jsonData = jsonData else {return}

            do {
                let youtubeSeachList = try JSONDecoder().decode(YoutubeSearchList.self, from: jsonData)
                DispatchQueue.main.async {
                    completion(youtubeSeachList)
                }
            } catch let jsonError {
                print("Error: json serialization error", jsonError)
            }
        }
        task.resume()
    }
}

class ImageDownloader : ObservableObject {
    @Published var downloadData: Data? = nil

    func downloadImage(url: String) {

        guard let imageURL = URL(string: url) else { return }

        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                self.downloadData = data
            }
        }
    }
}

struct URLImage: View {

    let url: String
    @ObservedObject private var imageDownloader = ImageDownloader()

    init(url: String) {
        self.url = url
        self.imageDownloader.downloadImage(url: self.url)
    }

    var body: some View {

        if let imageData = self.imageDownloader.downloadData {
            let img = UIImage(data: imageData)
            return VStack {
                Image(uiImage: img!).resizable()
            }
        } else {
            return VStack {
                let img = UIImage()
                Image(uiImage: img).resizable()
            }
        }
    }
}



struct SearchBasedOnIngredientsView: View {

    @ObservedObject var youtubeVideoViewModel = YoutubeVideoViewModel()
    @State private var selection = Set<String>()
    
    let names = [
        "Potatoes",
        "Onions",
        "Tomatoes",
        "Eggs",
        "Milk",
        "Corn",
        "Spinach",
        "Peas",
        "Rice",
        "Bread",
        "Garlic",
        "Capsicum",
        "Zucchini",
        "Meat",
        "Chicken",
        "Pork",
        "Beaf",
        "Cabbage",
        "Lettuce",
        "Chickpeas",
        "Beans",
        "Noodles"
    ]

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                List(names, id: \.self, selection: $selection) { name in
                    Text(name)
                }
                .navigationTitle("Select Ingredients")
                .toolbar {
                    EditButton()
                }
                
                Spacer()

                
                Button("Search"){
                    youtubeVideoViewModel.fetchVideoWithSeach(searchText: selection.joined(separator: " ").replacingOccurrences(of: " ", with: "%20"))

                }.padding()
                Spacer()

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


struct SearchBasedOnIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBasedOnIngredientsView()
    }
}
