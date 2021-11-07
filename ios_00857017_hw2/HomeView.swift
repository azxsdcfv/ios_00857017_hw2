//
//  HomeView.swift
//  ios_00857017_hw2
//
//  Created by User14 on 2021/11/5.
//

import SwiftUI

struct HomeView: View {
    @State private var moveDistance: CGFloat = -100
        @State private var opacity: Double = 1
        
        var body: some View {
            VStack {
                Image("Image")
                    .offset(x: 0, y: 120)
                Button("哎呦,不錯喔") {
                    moveDistance += 100
                    opacity -= 0.3
                }
                .offset(x: -85, y: 0)
                .font(.title)
                HStack {
                    Image("dog")
                        .offset(x: moveDistance, y: -780)
                        .opacity(opacity)
                        .scaledToFill()
                        .scaleEffect(0.3)
                        
                    Spacer()
                }
            }
            
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
