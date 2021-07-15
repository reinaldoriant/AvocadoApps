//
//  AvocadosApp.swift
//  Avocados
//
//  Created by TI Digital on 15/07/21.
//

import SwiftUI

@main
struct AvocadosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
