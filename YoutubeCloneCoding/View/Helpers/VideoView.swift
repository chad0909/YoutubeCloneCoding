//
//  VideoView.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/23.
//

import SwiftUI

struct VideoView: View {
    
    @State var mainImage: String
    @State var profileImage: String
    @State var mainTitle: String
    @State var profileName: String
    @State var views: String
    @State var uploadTime: String
    
    var body: some View {
        ZStack{
            VStack{
                Image("\(mainImage)")
                    .resizable()
                    .scaledToFit()
                HStack{
                    Spacer()
                    Image("\(profileImage)")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("\(mainTitle)")
                                .lineLimit(2)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundColor(Color.white)
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color.white)
                        }
                        HStack{
                            Text("\(profileName)")
                            Text("\(views)")
                            Text("\(uploadTime)")
                        }
                        .foregroundColor(Color.gray)
                        .font(.system(size: 14))
                    }
                    Spacer()
                }
                
            }
            
            
        }

    }

}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(mainImage: "", profileImage: "", mainTitle: "", profileName: "", views: "", uploadTime: "")
    }
}
