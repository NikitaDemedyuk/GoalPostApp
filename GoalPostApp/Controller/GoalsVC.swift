//
//  GoalsVC.swift
//  GoalPostApp
//
//  Created by Никита on 17.01.22.
//

import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("button was pressed")
    }
}

