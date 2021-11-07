//
//  video.swift
//  ios_00857017_hw2
//
//  Created by User14 on 2021/11/6.
//

import Foundation

struct video:Identifiable{
    let id=UUID()
    let Name:String
    let FileName: String
    let type:String
}

extension video{
    static let V: [video] = [
        video(Name: "擱淺",FileName: "ge",type: "mp4"),
        video(Name: "斷了的弦",FileName: "duan",type: "mp4"),
        video(Name: "說好不哭",FileName: "shuo",type: "mp4"),
        video(Name: "聽見下雨的聲音",FileName: "ting",type: "mp4"),
        video(Name: "手寫的從前",FileName: "so",type: "mp4"),
        video(Name: "不能說的秘密",FileName: "bu",type: "mp4"),
        video(Name: "給我一首歌的時間",FileName: "gei",type: "mp4"),
        video(Name: "晴天",FileName: "ching",type: "mp4"),
        video(Name: "大笨鐘",FileName: "da",type: "mp4"),
        video(Name: "明明就",FileName: "ming",type: "mp4"),
    ]
}
