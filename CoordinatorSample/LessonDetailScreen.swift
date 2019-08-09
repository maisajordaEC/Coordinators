//
//  LessonDetailScreen.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

protocol LessonDetailScreenDelegate {
    func didTapLessonPlan(forDialogId dialogId: Int)
}
class LessonDetailScreen: UIViewController {
    
    var delegate: LessonDetailScreenDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapLessonPlan(_ sender: Any) {
        let button = sender as! UIButton
        let dialogId = button.tag
        self.delegate?.didTapLessonPlan(forDialogId: dialogId)
    }
}
