//
//  VideoView.swift
//  ios_00857017_hw2
//
//  Created by User14 on 2021/11/5.
//

import SwiftUI
import Foundation
import AVKit

struct VideoView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(video.V){
                    item in
                    NavigationLink(
                        destination:
                            VideoPlayerView(vd: item),
                        label: {
                            Text(item
                            .Name)
                        }
                    )
                }
            }
            .navigationTitle("影片")
        }
    }
    
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
