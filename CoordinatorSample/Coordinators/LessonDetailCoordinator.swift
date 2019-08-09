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
    private var dialogId: Int?
    private var lessonPlanCoordinator: LessonPlanCoordinator?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let lessonDetailVC  = LessonDetailScreen()
        
        self.lessonDetailVC = lessonDetailVC
        presenter .pushViewController(lessonDetailVC, animated: true)
    }
}

extension LessonDetailCoordinator: LessonDetailScreenDelegate {
    func didTapLessonPlan(forDialogId dialogId: Int) {
        self.dialogId = dialogId
        
        let lessonPlanCoordinator = LessonPlanCoordinator(presenter: presenter, dialogId: dialogId)
        lessonPlanCoordinator.start()
        
        self.lessonPlanCoordinator = lessonPlanCoordinator
    }
}
