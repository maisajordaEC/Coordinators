//
//  LessonPlanCoordinator.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

class LessonPlanCoordinator: Coordinator {
    private let presenter: UINavigationController
    private var lessonPlanVC: LessonPlanVC?
    private var dialogId: Int
    private var rootDialogId: Int
    
    init(presenter: UINavigationController, dialogId: Int, rootDialogId: Int) {
        self.presenter = presenter
        self.dialogId = dialogId
        self.rootDialogId = rootDialogId
    }
    
    func start() {
        // Create Lesson Plan screen:
        self.lessonPlanVC  = LessonPlanVC()
        self.lessonPlanVC?.rootDialogId = rootDialogId
        self.lessonPlanVC?.dialogId = dialogId
        self.lessonPlanVC?.delegate = self
        presenter .pushViewController(self.lessonPlanVC!, animated: true)
    }
}

extension LessonPlanCoordinator: LessonPlanVCDelegate {
    func loadDialogDetail(forDialog dialogId: Int) {
        let dialogDetailCoordinator = DialogDetailCoordinator.init(presenter: presenter, dialogId: dialogId)
        dialogDetailCoordinator.start()
    }
}
