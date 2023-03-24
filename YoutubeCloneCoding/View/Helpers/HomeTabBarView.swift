//
//  HomeTabBarView.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/24.
//

import SwiftUI

struct HomeTabBarView: View {
    @State var label: String
       
       var body: some View {
           ZStack {
               Button(action: {
                   print("button tapped")
               }){
                   Text("\(label)")
                       .background(Color.gray)
                       .foregroundColor(Color.white)
                       .padding(.horizontal, 10)
                       .padding(.vertical, 5)
               }
               .background(Color.gray)
               .cornerRadius(5)
               .minimumScaleFactor(0.5)
               
               
           }
       }
}

struct HomeTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabBarView(label: "")
    }
}
