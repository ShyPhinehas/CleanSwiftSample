//
//  AppDelegate.swift
//  Sample
//
//  Created by Littlefox iOS Developer on 2022/03/07.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = SerchViewController(vm: SerchViewModel(), _v: SerchView())
        self.window?.makeKeyAndVisible()
        
        return true
    }


}

