//
//  YoutubeCloneCodingApp.swift
//  YoutubeCloneCoding
//
//  Created by 077tech on 2023/03/23.
//

import SwiftUI

@main
struct YoutubeCloneCodingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
        }
    }
}
