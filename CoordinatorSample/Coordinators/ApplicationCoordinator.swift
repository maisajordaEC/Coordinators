//
//  ApplicationCoordinator.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

class ApplicationCoordinator: Coordinator {
    let window: UIWindow
    let rootViewController: UINavigationController
    let tabbarCoordinator: TabbarCoordinator
    
    init(window: UIWindow) {
        self.window = window
        
        // Create root view Controller and Tabbar coordinator
        rootViewController = UINavigationController()
        tabbarCoordinator = TabbarCoordinator(presenter: rootViewController)
    }
    
    func start() {
        window.rootViewController = rootViewController
        // Start tabbarcoordiantor
        tabbarCoordinator.start()
        window.makeKeyAndVisible()
    }
}
