//
//  shoppingApp.swift
//  shopping
//
//  Created by Ella Götbring on 2022-11-07.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@available(iOS 14.0, *)
@available(iOS 14.0, *)
@main
struct projectarbeteApp: App {
    @StateObject var dbConnection = DatabaseConnection()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @available(iOS 14.0, *)
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(dbConnection)
        }
    }
}
