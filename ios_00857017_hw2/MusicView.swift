//
//  MusicView.swift
//  ios_00857017_hw2
//
//  Created by User14 on 2021/11/5.
//

import SwiftUI
import Foundation

struct MusicView: View {

    var body: some View {
        NavigationView {
            List {
                Section(header:Text("抒情")){
                    ForEach(song１.S){
                        item in
                        NavigationLink(
                            destination:
                                ScrollView(.vertical){
                                    Text(item.lyric)
                                } ,
                            label: {
                                Text(item
                                .fileName)
                            }
                        )
                    }
                }
                Section(header:Text("搖滾")){
                    ForEach(song2.S){
                        item in
                        NavigationLink(
                            destination:
                                ScrollView(.vertical){
                                    Text(item.lyric)
                                } ,
                            label: {
                                Text(item
                                .fileName)
                            }
                        )
                    }
                }
                Section(header:Text("情歌")){
                    ForEach(song3.S){
                        item in
                        NavigationLink(
                            destination:
                                ScrollView(.vertical){
                                    Text(item.lyric)
                                } ,
                            label: {
                                Text(item
                                .fileName)
                            }
                        )
                    }
                }
            }
            .navigationTitle("歌單")
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
