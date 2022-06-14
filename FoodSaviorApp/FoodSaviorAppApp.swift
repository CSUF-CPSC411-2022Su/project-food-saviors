//
//  FoodSaviorAppApp.swift
//  FoodSaviorApp
//
//  Created by csuftitan on 6/8/22.
//

import SwiftUI
import Firebase
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate
{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        
        let settings = Firestore.firestore().settings
     //   #if targetEnvironment(simulator)
    //    settings.host = "localhost:8080"
      //  settings.isPersistenceEnabled = false
  //      settings.isSSLEnabled = false
   //     #endif
        
        Firestore.firestore().settings = settings
                
        return true
    }
}




@main
struct FoodSaviorAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            
        }
    }
}
