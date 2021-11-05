//
//  SettingsViewControler.swift
//  lessons
//
//  Created by Nikita Anibroev on 05.11.2021.
//

import UIKit

class SettingsViewControler: UIViewController {
    
    @IBOutlet weak var oneNumberTextFiled: UITextField!
    @IBOutlet weak var twoNumberTextFiled: UITextField!
    
    var minValue = ""
    var maxValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oneNumberTextFiled.text = minValue
        twoNumberTextFiled.text = maxValue
    }
    
    @IBAction func tappedCancleButton() {
        dismiss(animated: true)
    }
    
}
