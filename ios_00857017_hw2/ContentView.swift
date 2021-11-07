//
//  ContentView.swift
//  ios_00857017_hw2
//
//  Created by User14 on 2021/11/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Label("首頁",systemImage: "house")
            }
            MusicView().tabItem {
                Label("音樂",systemImage: "music.note")
            }
            AlbumView().tabItem {
                Label("專輯",systemImage: "book")
            }
            VideoView().tabItem {
                Label("影片",systemImage: "play.tv")
            }
            AboutView().tabItem {
                Label("簡介",systemImage: "questionmark.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
