//
//  HomeView.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/23.
//

import SwiftUI

struct HomeView: View {
    @State private var showTVPopover = false
    
    var body: some View {
        
        let HomeTab = HomeTabContentTab().videos
        let DummyDatas = DummyData().videos
        
        Color.black
            .ignoresSafeArea()
            .overlay(
                VStack{
                    Spacer()
                    HStack{
                        Image("YoutubeLogo")
                            .resizable()
                            .frame(width: 130, height: 40)
                        Spacer()
                        Button(action: {
                            self.showTVPopover.toggle()
                        }) {
                            Image(systemName: "tv")
                        }
                        .popover(isPresented: $showTVPopover, content: {
                            TVPopupView()
                                .frame(width: 200, height: 200)
                        })

                        Image(systemName: "bell")
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "person.and.person.fill")
                    }
                    .foregroundColor(Color.white)
                    Spacer()
                    ScrollView(.horizontal){
                        HStack(spacing: 10) {
                            ForEach(0..<7) { index in
                                HomeTabBarView(label: "\(HomeTab[index].title)")
                                
                            }
                        }
                    }
                        .foregroundColor(.white)
                    Spacer()
                    ScrollView(.vertical){
                        VStack(spacing: 40){
                            ForEach(0..<4){index in
                                VideoView(mainImage: "\(DummyDatas[index].video)", profileImage: "\(DummyDatas[index].profileImage)", mainTitle: "\(DummyDatas[index].videoName)", profileName: "\(DummyDatas[index].profileName)", views: "\(DummyDatas[index].playTime)", uploadTime: "\(DummyDatas[index].uploadTime)")
                            }
                        }
                    }
                    Spacer()
                }
            )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
