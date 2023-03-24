//
//  TVPopupView.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/24.
//

import SwiftUI

struct TVPopupView: View {
    var body: some View {
        VStack {
            Text("Popover Title")
                .font(.headline)
                .padding(.bottom, 10)
            Text("This is some popover content.")
                .padding()
            Button("Close") {
                // Handle close button action here
            }
            .padding(.top, 10)
        }
        .background(Color.white)
        .cornerRadius(10)
    }
}

struct TVPopupView_Previews: PreviewProvider {
    static var previews: some View {
        TVPopupView()
    }
}
