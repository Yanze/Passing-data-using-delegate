//
//  ViewController.swift
//  Todo
//
//  Created by yanze on 7/13/17.
//  Copyright © 2017 yanzeliu. All rights reserved.
//

import UIKit


// receiving data view controller
class TodoViewController: UITableViewController, TodoDelegate {
    
    var todoList = [Todo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = todoList[indexPath.row].descrip
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            let detailVc = segue.destination as! DetailViewController
            detailVc.todo.descrip = "hello"
        }
        else if segue.identifier == "AddNew" {
            let addVc = segue.destination as! AddViewController
            addVc.delegate = self
        }
    }

    func passTodoData(data: String) {
        let todo = Todo()
        todo.descrip = data
        todoList.append(todo)
        tableView.reloadData()
    }

}

