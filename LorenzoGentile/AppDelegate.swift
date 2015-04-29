//
//  AppDelegate.swift
//  LorenzoGentile
//
//  Created by Lorenzo Gentile on 2015-04-19.
//  Copyright (c) 2015 Lorenzo Gentile. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let window = UIWindow()
        window.frame = UIScreen.mainScreen().bounds
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        self.window = window
        
        return true
        
    }

}

