//
//  VideoPlayerView.swift
//  Africa
//
//  Created by TI Digital on 07/07/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah",withExtension: "mp4")!))
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
