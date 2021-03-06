//
//  AppDelegate.swift
//  iPadTest
//
//  Created by DD Dev on 2021/03/29.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        let config = UISceneConfiguration(name: "Default Configuration", sessionRole: .windowApplication)
        config.sceneClass = UIWindowScene.self
        config.delegateClass = SceneDelegate.self
        if UIDevice.current.userInterfaceIdiom == .phone {
            config.storyboard = UIStoryboard(name: "Main", bundle: nil)
        } else {
            config.storyboard = UIStoryboard(name: "Main_pad", bundle: nil)
        }
        
        return config
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

