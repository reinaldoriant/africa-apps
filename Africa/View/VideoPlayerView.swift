//
//  VideoPlayerView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
