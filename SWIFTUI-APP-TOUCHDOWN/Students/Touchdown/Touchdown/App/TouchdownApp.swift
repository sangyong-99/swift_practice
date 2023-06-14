//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by 신상용 on 2023/06/08.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
