//
//  AppDelegate.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 08/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var applicationCoordinator: ApplicationCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        // Create application coordinator:
        self.applicationCoordinator = ApplicationCoordinator.init(window: window)
        self.applicationCoordinator?.start()
        
        // GIT workflow - Testing C
        
        return true
    }
}

