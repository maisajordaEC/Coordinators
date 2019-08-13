//
//  TabbarViewController.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import Foundation
import UIKit

protocol TabbarViewControllerDelegate: class {
    func didLoadTabbarViewController()
}

class TabbarViewController: UITabBarController {
    
    weak var tabbarDelegate: TabbarViewControllerDelegate?
    
    public static var nib: UINib {
        return UINib(nibName: "TabbarViewController", bundle: Bundle(for: TabbarViewController.self))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Toolbar item count: \(String(describing: self.toolbarItems?.count))")
        
        // Create Tab one
        let myEnglishVC = MyEnglishViewController()
        let tabOne = UINavigationController.init(rootViewController: myEnglishVC)
        let tabOneBarItem = UITabBarItem(title: "MyEnglish", image: UIImage(named: "defaultImage.png"), selectedImage: UIImage(named: "selectedImage.png"))
        tabOne.tabBarItem = tabOneBarItem
        
        // Create Tab two
        let tabTwo = UIViewController()
        let tabTwoBarItem2 = UITabBarItem(title: "Free Lesson", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        tabTwo.view.backgroundColor = UIColor.blue
        tabTwo.tabBarItem = tabTwoBarItem2
        
        // Create Tab three
        let tabThree = UIViewController()
        let tabTwoBarItem3 = UITabBarItem(title: "Vocab", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        tabThree.view.backgroundColor = UIColor.yellow
        tabThree.tabBarItem = tabTwoBarItem3
        
        // Create Tab four
        let tabFour = UIViewController()
        let tabTwoBarItem4 = UITabBarItem(title: "Upgrade", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        tabFour.view.backgroundColor = UIColor.blue
        tabFour.tabBarItem = tabTwoBarItem4
        
        self.viewControllers = [tabOne, tabTwo, tabThree, tabFour]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tabbarDelegate?.didLoadTabbarViewController()
    }
    
    func getMyEnglishNavigationController() -> UINavigationController? {
        for vc in self.viewControllers! {
            if vc.isKind(of: UINavigationController.self) {
                return vc as? UINavigationController
            }
        }
        
        return nil
    }
}
