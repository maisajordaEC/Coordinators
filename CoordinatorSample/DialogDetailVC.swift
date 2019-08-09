//
//  DialogDetailVC.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

protocol DialogDetailVCDelegate {
    func didTapGoLive()
}

class DialogDetailVC: UIViewController {
    var dialogId: Int = 0
    var delegate: DialogDetailVCDelegate?
    
    @IBOutlet weak var dialogLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dialogLabel.text = "\(dialogId + 1)"
        print("DialogDetailVC")
    }
    
    @IBAction func didTapGoLive(_ sender: Any) {
        delegate?.didTapGoLive()
    }
}
