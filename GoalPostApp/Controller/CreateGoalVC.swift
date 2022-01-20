//
//  CreateGoalVCViewController.swift
//  GoalPostApp
//
//  Created by Никита on 19.01.22.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
        //dismiss(animated: true, completion: nil)
    }
    
}
