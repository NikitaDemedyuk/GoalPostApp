//
//  CreateGoalVCViewController.swift
//  GoalPostApp
//
//  Created by Никита on 19.01.22.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyBoard()
        shortTermBtn.setSelectColor()
        longTermBtn.setDeselectColor()
        goalTextView.delegate = self
    }
    
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectColor()
        longTermBtn.setDeselectColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermBtn.setDeselectColor()
        longTermBtn.setSelectColor()
    }
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?"  {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
        //dismiss(animated: true, completion: nil)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}
