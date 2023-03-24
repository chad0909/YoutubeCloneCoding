//
//  HomeTabContents.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/24.
//

import Foundation

struct HomeTabContents: Identifiable {
    let id = UUID()
    let title : String
}

class HomeTabContentTab: ObservableObject {
    @Published var videos = [
        HomeTabContents(title: "전체"),
        HomeTabContents(title: "사진"),
        HomeTabContents(title: "새로운 맞춤 동영상"),
        HomeTabContents(title: "게임"),
        HomeTabContents(title: "뉴스"),
        HomeTabContents(title: "공부"),
        HomeTabContents(title: "코딩")
    ]
}
