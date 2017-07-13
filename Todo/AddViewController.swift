//
//  AddViewController.swift
//  Todo
//
//  Created by yanze on 7/13/17.
//  Copyright © 2017 yanzeliu. All rights reserved.
//

import UIKit

protocol TodoDelegate {
    func passTodoData(data: String)
}
// sending data view controller
class AddViewController: UIViewController {
    
    @IBOutlet weak var tofoTextLabel: UITextField!
     var delegate: TodoDelegate?
    
    @IBAction func AddNewTaskPressed(_ sender: UIButton) {
        if delegate != nil {
            self.delegate?.passTodoData(data: tofoTextLabel.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    

}
