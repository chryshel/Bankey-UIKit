//
//  AppDelegate.swift
//  Bankey
//
//  Created by chryshel fonseka on 2024-02-13.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // in our AppDelegate we directly getting refference to our window
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        //making it key and visible
        window?.makeKeyAndVisible()
        //setting a background color
        window?.backgroundColor = .systemBackground
        //setting the ViewController as the rootview controller in our AppDelegate
       // window?.rootViewController = LoginViewController()
        window?.rootViewController = OnboardingContainerViewController()
        
        return true
    }
}

