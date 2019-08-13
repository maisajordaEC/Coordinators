//
//  LessonDetailCoordinator.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

class LessonDetailCoordinator: Coordinator {
    private let presenter: UINavigationController
    private var lessonDetailVC: LessonDetailScreen?
    var rootDialogId: Int?
    private var lessonPlanDialogId: Int?
    private var lessonPlanCoordinator: LessonPlanCoordinator?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        // Create Lesson Detail screen:
        self.lessonDetailVC  = LessonDetailScreen()
        self.lessonDetailVC?.delegate = self
        presenter .pushViewController(self.lessonDetailVC!, animated: true)
    }
}

extension LessonDetailCoordinator: LessonDetailScreenDelegate {
    func didTapLessonPlan(forDialogId dialogId: Int) {
        self.lessonPlanDialogId = dialogId
        
        // Create lesson plan Coordinator
        self.lessonPlanCoordinator = LessonPlanCoordinator(presenter: presenter, dialogId: dialogId, rootDialogId: rootDialogId ?? 0)
        lessonPlanCoordinator?.start()
    }
}
