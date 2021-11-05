//
//  ViewController.swift
//  lessons
//
//  Created by Nikita Anibroev on 05.11.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var oneRadnomNumber: UILabel!
    @IBOutlet weak var twoRandomNumber: UILabel!
    
    @IBOutlet weak var rerusltLable: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var layerLableOne: UILabel!
    @IBOutlet weak var layerLableTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layerLableOne.layer.masksToBounds = true
        layerLableTwo.layer.masksToBounds = true
        layerLableOne.layer.cornerRadius = 25
        layerLableTwo.layer.cornerRadius = 25
        
        rerusltLable.layer.masksToBounds = true
        rerusltLable.layer.cornerRadius = 135
        
        startButton.layer.cornerRadius = 25
        
    }

    @IBAction func actionStartButton(_ sender: Any) {
        let minNubmer = Int(String(oneRadnomNumber.text ?? "")) ?? 0
        let maxNubmer = Int(String(twoRandomNumber.text ?? "")) ?? 100
        
        rerusltLable.text = String(Int.random(in: minNubmer...maxNubmer))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewControler else { return }
        settingsVC.minValue = oneRadnomNumber.text ?? "0"
        settingsVC.maxValue = twoRandomNumber.text ?? "100"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewControler else { return }
        
        oneRadnomNumber.text = settingsVC.oneNumberTextFiled.text
        twoRandomNumber.text = settingsVC.twoNumberTextFiled.text
 }
}
