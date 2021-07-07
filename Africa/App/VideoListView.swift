//
//  VideoListView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView {
            List{
                ForEach(videos) { item in
                    VideoListItem(video: item)
                }
            }//: list
        }//: navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
            .previewDevice("iPhone 11")
    }
}
