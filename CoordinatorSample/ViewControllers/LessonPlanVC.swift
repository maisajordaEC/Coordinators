//
//  LessonPlanVC.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

protocol LessonPlanVCDelegate {
    func loadDialogDetail(forDialog dialogId:Int)
}

class LessonPlanVC: UIViewController {
    var rootDialogId: Int = 0
    var dialogId: Int = 0
    var delegate: LessonPlanVCDelegate?
    @IBOutlet weak var dialogButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Lesson Plan"
        dialogButton.setTitle("Load Dialog: \(dialogId + 1)", for: .normal)
        if dialogId == 1 {
            dialogButton.backgroundColor = UIColor.init(red: 155/255, green: 27/255, blue: 29/255, alpha: 1.0)
        }
    }
    
    @IBAction func didTapDialog(_ sender: Any) {
        // Check to see if we need to load a new Dialog Detail screen:
        if rootDialogId != dialogId {
            self.delegate?.loadDialogDetail(forDialog: dialogId)
        }
    }
}
