//
//  TabbarCoordinator.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import Foundation
import UIKit

class TabbarCoordinator: Coordinator {
    private let presenter: UINavigationController
    private var tabbarViewController: TabbarViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let tabbarVC = TabbarViewController()
        tabbarVC.tabbarDelegate = self
        self.tabbarViewController = tabbarVC
        
        presenter.pushViewController(tabbarVC, animated: true)
    }
}

extension TabbarCoordinator: TabbarViewControllerDelegate {
    func didLoadTabbarViewController() {
        // Create MyEnglish coordinator
        let navVC = self.tabbarViewController?.getMyEnglishNavigationController()
        let myEnglishVC = navVC?.viewControllers[0]
        
        let myEnglishCoordinator = MyEnglishCoordinator.init(presenter: navVC!, myEnglishViewController: myEnglishVC as? MyEnglishViewController)
        myEnglishCoordinator.start()
    }
}
