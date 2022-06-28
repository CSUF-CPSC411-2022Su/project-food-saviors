//
//  ListVideos.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 20/06/22.
//

import SwiftUI

struct ListVideos: View {
    var videos: [VideoList] = videoDetails.topTen
    
    var body: some View {
        NavigationView{
            List(videos, id: \.id) { video in
                
                NavigationLink(
                    destination: VideoDetailView(video: video), label: {
                        
                        VideoCell(video: video)
                    }
                )
           
            }
            .navigationTitle("Recommended Recipes")
        }
        
    }
}

struct VideoCell: View {
    var video: VideoList
    var body: some View{
        HStack{
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            VStack(alignment: .leading, spacing: 5){
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(1)
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ListVideos_Previews: PreviewProvider {
    static var previews: some View {
        ListVideos()
    }
}
