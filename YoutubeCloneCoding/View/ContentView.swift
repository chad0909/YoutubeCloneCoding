//
//  ContentView.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
            .tabItem{
                Image(systemName: "house")
                Text("홈")
            }
            ShortsView()
            .tabItem{
                Image(systemName: "square.and.pencil")
                Text("Shorts")
            }
            Text("업로드")
            .tabItem{
                Image(systemName: "plus")
            }
            Text("구독")
            .tabItem{
                Image(systemName: "gear")
                Text("구독")
            }
            Text("보관함")
            .tabItem{
                Image(systemName: "gear")
                Text("보관함")
            }
        }
        .accentColor(.white)
//        .foregroundColor(.white)
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
}
