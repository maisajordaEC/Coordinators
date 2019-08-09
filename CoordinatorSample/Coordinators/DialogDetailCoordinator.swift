//
//  DialogDetailCoordinator.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

class DialogDetailCoordinator: Coordinator {
    private let presenter: UINavigationController
    private var dialogVC: DialogDetailVC?
    private var dialogId: Int?
    private var lessonDetailCoordinator: LessonDetailCoordinator?
    
    init(presenter: UINavigationController, dialogId: Int) {
        self.presenter = presenter
        self.dialogId = dialogId
    }
    
    func start() {
        let dialogDetailVC  = DialogDetailVC()
        dialogDetailVC.delegate = self
        dialogDetailVC.dialogId = self.dialogId ?? 0
        self.dialogVC = dialogDetailVC
        //presenter.present(dialogDetailVC, animated: true, completion: nil)
        presenter .pushViewController(dialogDetailVC, animated: true)
    }
}

extension DialogDetailCoordinator: DialogDetailVCDelegate {
    func didTapGoLive() {
        let lessonDetailCoordinator = LessonDetailCoordinator(presenter: presenter)
        self.lessonDetailCoordinator = lessonDetailCoordinator
        lessonDetailCoordinator.start()
    }
}
