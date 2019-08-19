//
//  MyEnglishCoordinator.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

class MyEnglishCoordinator: Coordinator {
    private let presenter: UINavigationController
    private var myEnglishViewController: MyEnglishViewController?
    private var dialogDetailCoordinator: DialogDetailCoordinator?
    
    init(presenter: UINavigationController, myEnglishViewController: MyEnglishViewController?) {
        self.presenter = presenter
        self.myEnglishViewController = myEnglishViewController
        self.myEnglishViewController?.delegate = self
    }
    
    func start() {
        // Nothing to do here, myEnglish will automatically load because this is the
        // root viewcontroller
        
        // GIT workflow - Testing A
        // GIT workflow - Testing B
    }
}

extension MyEnglishCoordinator: MyEnglishViewControllerDelegate {
    func didSelectDialog(withId ID: Int) {
        // Create dialog detail coordinator
        self.dialogDetailCoordinator = DialogDetailCoordinator.init(presenter: presenter, dialogId: ID)
        dialogDetailCoordinator?.start()
    }
}
