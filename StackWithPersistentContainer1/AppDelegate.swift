//
//  AppDelegate.swift
//  StackWithPersistentContainer1
//
//  Created by Mazharul Huq on 2/19/18.
//  Copyright © 2018 Mazharul Huq. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //Gives a tint color to navigation bar
        let appearanceProxy = UINavigationBar.appearance()
        appearanceProxy.barTintColor = UIColor(red: 0.6, green: 0.8, blue: 0.4, alpha: 1.0)
        //Makes title text color white
        appearanceProxy.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white,
        ]
        //Makes large title text color white
        appearanceProxy.largeTitleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white,
        ]
        return true
    }

    
}

