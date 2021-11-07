//
//  VideoPlayerView.swift
//  ios_00857017_hw2
//
//  Created by User14 on 2021/11/6.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let vd:video
    var body: some View {
        let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: vd.FileName, withExtension: vd.type)!)
        VideoPlayer(player: avPlayer)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(vd: video.V[1])
    }
}
