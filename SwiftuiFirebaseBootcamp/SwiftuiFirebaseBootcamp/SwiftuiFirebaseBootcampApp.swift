//
//  SwiftuiFirebaseBootcampApp.swift
//  SwiftuiFirebaseBootcamp
//
//  Created by 신상용 on 2023/04/28.
//

import SwiftUI
import Firebase


@main
struct SwiftuiFirebaseBootcampApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
