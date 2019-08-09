//
//  MyEnglishViewController.swift
//  CoordinatorSample
//
//  Created by Mailyn Sajorda on 09/08/2019.
//  Copyright © 2019 Mailyn Sajorda. All rights reserved.
//

import UIKit

protocol MyEnglishViewControllerDelegate {
    func didSelectDialog(withId ID: Int)
}

class MyEnglishViewController: UIViewController {
    
    var delegate: MyEnglishViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("MyEnglishViewController")
    }
    
    @IBAction func dialogTap(_ sender: Any) {
        let button = sender as! UIButton
        let dialogId = button.tag
        self.delegate?.didSelectDialog(withId: dialogId)
    }
}
