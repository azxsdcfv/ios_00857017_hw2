//
//  AlbumView.swift
//  ios_00857017_hw2
//
//  Created by User14 on 2021/11/6.
//

import SwiftUI

struct AlbumView: View {
    let books = [
            "Jay",
            "范特西",
            "八度空間",
            "葉惠美",
            "七里香",
            "11月的蕭邦",
            "依然范特西",
            "我很忙"
        ]
        
        var body: some View {
            VStack {
                ScrollView(.horizontal) {
                    let rows = [GridItem()]
                    LazyHGrid(rows: rows) {
                        ForEach(books.indices) { item in
                            BookView2(book: books[item], number: item + 1)
                        }
                    }
                }
                .fixedSize(horizontal: false, vertical: true)
                Spacer()
                
                ScrollView(.vertical) {
                    let columns = Array(repeating: GridItem(), count: 2)
                    LazyVGrid(columns: columns) {
                        ForEach(books.indices) { item in
                            BookView(book: books[item], number: item + 1)
                        }
                    }
                    
                }
            }
            
        }
}

struct BookView: View {
    let book: String
    let number: Int
    
    var body: some View {
        VStack {
            Image(book)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipped()
            Link(destination: URL(string: "https://zh.wikipedia.org/zh-tw/%E5%91%A8%E6%9D%B0%E5%80%AB%E9%9F%B3%E6%A8%82%E4%BD%9C%E5%93%81%E5%88%97%E8%A1%A8")!, label: {
                        VStack {
                            Text(book)
                            
                        }
            })
        }
        .overlay(NumberImage(number: number)
            , alignment: .topLeading)
    }
}

struct BookView2: View {
    let book: String
    let number: Int
    
    var body: some View {
        VStack {
            Image(book)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipped()
            Text(book)
        }
        .overlay(NumberImage(number: number)
            , alignment: .topLeading)
    }
}
struct NumberImage: View {
    let number: Int
    var body: some View {
        Image(systemName: "\(number).circle.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView()
    }
}
