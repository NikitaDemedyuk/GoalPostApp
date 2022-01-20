//
//  FinishGoalVC.swift
//  GoalPostApp
//
//  Created by Никита on 20.01.22.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createGoalBtn.bindToKeyBoard()
        pointsTextField.delegate = self
    }
    

    @IBAction func createBtnWasPressed(_ sender: Any) {
        // Pass data into Core Data Goal Model
        
    }
    
}
