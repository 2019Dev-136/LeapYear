//
//  LYMainViewController.swift
//  LeapYear
//
//  Created by 2019_Dev_136 on 3/14/19.
//  Copyright © 2019 2019_Dev_136. All rights reserved.
//

import UIKit

class LYMainViewController: UIViewController {

    @IBOutlet weak var yearTextField: UITextField!
    private let presenter = LYPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func find_Clicked(_ sender: Any) {
        presenter.enteredYear = yearTextField.text
        if presenter.validateUserInput() {
            let isLeapYear = presenter.isLeapYear()
            isLeapYear ? displayAlert(title: LYConstantMessages.alertTitle, message: LYConstantMessages.leapYear) : displayAlert(title: LYConstantMessages.alertTitle, message: LYConstantMessages.notLeapYear)
        }
        else {
            displayAlert(title: LYConstantMessages.alertTitle, message: LYConstantMessages.invalidEntry)
        }
    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction (title: LYConstantMessages.oKText, style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}


