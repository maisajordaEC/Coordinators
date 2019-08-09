//
//  LessonPlanVC.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

protocol LessonPlanVCDelegate {
    func didTapDialog()
}

class LessonPlanVC: UIViewController {
    
    var delegate: LessonPlanVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapDialog(_ sender: Any) {
        self.delegate?.didTapDialog()
    }
}
