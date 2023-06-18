//
//  DevoteApp.swift
//  Devote
//
//  Created by 신상용 on 2023/06/14.
//

import SwiftUI

@main
struct DevoteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
