//
//  YouTubeAPI.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 24/06/22.
//

//import SwiftUI
//
//struct Video: Codable {
//
//    var kind: String
//    var items: [YouTubedetails]
////    let thumbnails: String
//}
//
//struct YouTubedetails: Codable {
//    var snippet: Snippet
//}
//
//struct Snippet: Codable{
//    var title: String
//    var description: String
//    var channelTitle: String
//
//}
//
//class ViewModel: ObservableObject{
//    @Published var videos: Video?
//    @Published var firstFoundName = ""
//    @Published var youtubedata = [YouTubedetails]()
//
//    func fetch() {
//        guard let url = URL(string: "https://www.googleapis.com/youtube/v3/videos?id=7lCDEYXw3mM,CimY_Sr3gWw&key=AIzaSyBQ9_Q_cR0JOW82XVtPwvw04RDkI301dd4&part=snippet,contentDetails,statistics,status") else{
//            return
//        }
//
//        let task = URLSession.shared.dataTask(with: url) {[weak self]
//            data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//
//            // Convert to JSON
//
//            do {
//                let videos = try JSONDecoder().decode(Video.self, from: data)
//                print("testing data: \(videos)")
//                DispatchQueue.main.async {
//                    self?.firstFoundName = videos.kind
//                    self?.youtubedata = videos.items
//
////                    self?.firstFoundSnippet = videos.items[0].snippet
//
//                }
//            }
//            catch{
//                print(error)
//            }
//        }
//        task.resume()
//    }
//}
//
//struct YouTubeAPI: View {
//    @StateObject var viewModel = ViewModel()
//
//    var body: some View {
//
////        Text(viewModel.firstFoundTitle)
//
//        List{
//            ForEach(0..<viewModel.youtubedata.count, id: \.self) {index in
//                VStack{
//                    Text("hello")
//                    Text(viewModel.youtubedata[index].snippet.title)
//                        .bold()
//                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 0, trailing: 5))
//                    Text(viewModel.youtubedata[index].snippet.description)
//                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
//                }
//
//            }
//        }
//
////        NavigationView{
////
////            Text(viewModel.firstFoundName)
////            Text(viewModel.youtubedata[1].snippet.title)
////            .navigationTitle("Videos")
////            .onAppear{
////                viewModel.fetch()
////            }
////        }
//    }
//}
//
//struct YouTubeAPI_Previews: PreviewProvider {
//    static var previews: some View {
//        YouTubeAPI()
//    }
//}
