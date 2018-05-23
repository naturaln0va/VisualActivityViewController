//
//  AppDelegate.swift
//  VisualExample
//
//  Created by Ryan Ackermann on 5/19/18.
//  Copyright © 2018 Ryan Ackermann. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = ButtonsViewController()
        window?.makeKeyAndVisible()
        
        return true
    }

}
