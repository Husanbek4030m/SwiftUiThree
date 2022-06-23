//
//  SwiftUiThreeApp.swift
//  SwiftUiThree
//
//  Created by Karavella on 23/06/22.
//

import SwiftUI

@main
struct SwiftUiThreeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
