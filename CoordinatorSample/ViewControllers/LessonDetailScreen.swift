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
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var delegate: LessonDetailScreenDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Lesson detail"
        button1.titleLabel?.textAlignment = .center
        button2.titleLabel?.textAlignment = .center
    }
    
    @IBAction func didTapLessonPlan(_ sender: Any) {
        let button = sender as! UIButton
        let dialogId = button.tag
        self.delegate?.didTapLessonPlan(forDialogId: dialogId)
    }
}
