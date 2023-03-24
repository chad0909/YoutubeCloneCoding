//
//  DummyData.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/23.
//

import Foundation

struct VideoData: Identifiable {
    let id = UUID()
    let video: String
    let profileImage: String
    let videoName: String
    let profileName: String
    let views: String
    let uploadTime: String
    let playTime: String
}

class DummyData: ObservableObject {
    @Published var videos = [
        VideoData(video: "ExampleImage", profileImage: "ExampleImage", videoName: "한 인간이 운이 좋아지기 전에 나타나는 징조들", profileName: "하와이 대저택", views: "54만", uploadTime: "7시간 전", playTime: "15:44"),
        VideoData(video: "ExampleImage2", profileImage: "ExampleImage", videoName: "두번째 비디오", profileName: "하루", views: "912만", uploadTime: "2주 전", playTime: "20:11"),
        VideoData(video: "ExampleImage", profileImage: "ExampleImage", videoName: "세번째 비디오", profileName: "토리", views: "32만", uploadTime: "4개월 전", playTime: "30:12"),
        VideoData(video: "ExampleImage2", profileImage: "ExampleImage", videoName: "네번째 비디오", profileName: "커피크라운", views: "84만", uploadTime: "10년 전", playTime: "34:22")
    ]
}
