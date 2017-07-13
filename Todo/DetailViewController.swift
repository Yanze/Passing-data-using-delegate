//
//  DetailViewController.swift
//  Todo
//
//  Created by yanze on 7/13/17.
//  Copyright © 2017 yanzeliu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var todo = Todo()
    @IBOutlet weak var todoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        todoLabel.text = todo.descrip
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
