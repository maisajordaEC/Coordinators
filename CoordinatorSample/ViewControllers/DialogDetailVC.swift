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
    func dismiss()
}

class DialogDetailVC: UIViewController {
    var dialogId: Int = 0
    var delegate: DialogDetailVCDelegate?
    
    @IBOutlet weak var dialogLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Dialog Detail: \(dialogId+1)"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(dismissScreen))
    }
    
    @IBAction func didTapGoLive(_ sender: Any) {
        delegate?.didTapGoLive()
    }
    
    @objc func dismissScreen(){
        delegate?.dismiss()
    }
}
