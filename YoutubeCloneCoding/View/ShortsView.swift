//
//  ShortsView.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/24.
//

import SwiftUI

struct ShortsView: View {
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                ZStack{
                    Text("Shorts View")
                        .foregroundColor(.white)
                }
            
            )
    }
}

struct ShortsView_Previews: PreviewProvider {
    static var previews: some View {
        ShortsView()
    }
}
