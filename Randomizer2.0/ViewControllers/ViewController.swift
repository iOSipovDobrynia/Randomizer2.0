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
    
    private let defaultValues = Values.getDefaultValues()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultValue()
        resultButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {
            return
        }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else {
            return
        }
        
        settingsVC.minimumValue = minimumLabel.text
        settingsVC.maximumValue = maximumLabel.text
    }
    
    //MARK: -IBActions
    @IBAction func getButtonPressed() {
        let minimumValue = Int(minimumLabel.text ?? "") ?? defaultValues.minimumValue
        let maximumValue = Int(maximumLabel.text ?? "") ?? defaultValues.maximumValue
        
        randomLabel.text = Int.random(in: minimumValue...maximumValue).formatted()
    }
    
    //MARK: -Private func
    private func setDefaultValue() {
        minimumLabel.text = defaultValues.minimumValue.formatted()
        maximumLabel.text = defaultValues.maximumValue.formatted()
    }
}

