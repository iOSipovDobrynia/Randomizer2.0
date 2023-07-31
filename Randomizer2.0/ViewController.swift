//
//  ViewController.swift
//  Randomizer2.0
//
//  Created by Goodwasp on 22.07.2023.
//

import UIKit

class ViewController: UIViewController {
    //MARK: -IBOutlets
    @IBOutlet var minimumLabel: UILabel!
    @IBOutlet var maximumLabel: UILabel!
    @IBOutlet var randomLabel: UILabel!
    
    @IBOutlet var resultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {
            return
        }
        
        settingsVC.minimumValue = minimumLabel.text
        settingsVC.maximumValue = maximumLabel.text
    }
    
    //MARK: -IBActions
    @IBAction func getButtonPressed() {
        let minimumValue = Int(minimumLabel.text ?? "") ?? 0
        let maximumValue = Int(maximumLabel.text ?? "") ?? 100
        
        randomLabel.text = Int.random(in: minimumValue...maximumValue).formatted()
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let settingsVC = unwindSegue.source as? SettingsViewController else {
            return
        }
        
        minimumLabel.text = settingsVC.minimumValueTF.text
        maximumLabel.text = settingsVC.maximumValueTF.text
    }
}

