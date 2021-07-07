//
//  VideoListItem.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct VideoListItem: View {
    
    let video:Video
    
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height:80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            }//: zstack
            VStack(alignment: .leading, spacing: 10){
                Text(video.name).font(.title2).fontWeight(.heavy).foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }
        }//: hstack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos:[Video]=Bundle.main.decode("videos.json")
    static var previews: some View {
        VideoListItem(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
