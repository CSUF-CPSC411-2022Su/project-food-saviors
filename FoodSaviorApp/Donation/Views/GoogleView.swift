//
//  SwiftUIView.swift
//  FoodSaviorApp
//
//  Created by Himani Tawade on 6/27/22.
//

import SwiftUI

extension String {
    func load() -> UIImage {
        do {
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data: Data = try
                Data(contentsOf: url)
            
            return UIImage(data: data) ?? UIImage()
                
        } catch {
            //
        }
        return UIImage()
    }
}

struct GoogleView: View {
    @ObservedObject var googleManager = GoogleManager.shared()
    @State var index: Int
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(googleManager.items.allItems, id: \.id) {
                    item in
                    
                    VStack {
                        Spacer()
                        Text(item.title[index]!)
                            .frame(width: 200, height: 60)
                            .font(.headline)
                        
                        ForEach(googleManager.images.allImages, id: \.id) { image in
                            
                            Image(uiImage: (image.image[index]?.load() ?? UIImage(systemName: "camera"))!)
                                .resizable()
                                .frame(width: 200, height: 200)
                        }
                        
                        Text(item.description[index]!)
                            .frame(width: 200, height: 160)
                            .font(.system(size: 18))
                        
                        Text(item.link[index]!)
                            .frame(width: 200)
                            .font(.system(size: 15))
                            .foregroundColor(.blue)
                        
                        Spacer()
                    }
                }
            }.frame(maxHeight: .infinity)
        }
    }
}

// struct GoogleView_Previews: PreviewProvider {
//  static var previews: some View {
//    GoogleView()
// }
// }
