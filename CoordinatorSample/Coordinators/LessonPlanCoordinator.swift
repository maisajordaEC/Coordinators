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
    
    init(presenter: UINavigationController, dialogId: Int) {
        self.presenter = presenter
        self.dialogId = dialogId
    }
    
    func start() {
        let lessonPlanVC  = LessonPlanVC()
        self.lessonPlanVC = lessonPlanVC
        presenter .pushViewController(lessonPlanVC, animated: true)
    }
}
