//
//  DialogDetailCoordinator.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

class DialogDetailCoordinator: Coordinator {
    private var presenter: UINavigationController
    private var dialogId: Int?
    private var lessonDetailCoordinator: LessonDetailCoordinator?
    
    init(presenter: UINavigationController, dialogId: Int) {
        self.presenter = presenter
        self.dialogId = dialogId
    }
    
    func start() {
        // Create dialog detail View Controller
        let dialogDetailVC  = DialogDetailVC()
        dialogDetailVC.delegate = self
        dialogDetailVC.dialogId = self.dialogId ?? 0
        
        // Create navigation controller to present modally:
        let dialogNavController = UINavigationController.init(rootViewController: dialogDetailVC)
        self.presenter.present(dialogNavController, animated: true, completion: {
            self.presenter = dialogNavController
            // Remove previous dialog's navigation stack here
        })
    }
}

extension DialogDetailCoordinator: DialogDetailVCDelegate {
    func dismiss() {
        self.presenter .dismiss(animated: true, completion: nil)
    }
    
    func didTapGoLive() {
        // Create lesson detail coordinator
        self.lessonDetailCoordinator = LessonDetailCoordinator(presenter: presenter)
        lessonDetailCoordinator?.rootDialogId = dialogId
        lessonDetailCoordinator?.start()
    }
}
