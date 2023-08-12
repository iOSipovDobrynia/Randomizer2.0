//
//  ViewController.swift
//  Randomizer2.0
//
//  Created by Goodwasp on 22.07.2023.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValues(for values: Values)
}

class RandomViewController: UIViewController {
    //MARK: -IBOutlets
    @IBOutlet var minimumLabel: UILabel!
    @IBOutlet var maximumLabel: UILabel!
    @IBOutlet var randomLabel: UILabel!
    
    @IBOutlet var resultButton: UIButton!
    
    private var values = Values.getDefaultValues() {
        didSet {
            minimumLabel.text = values.minimumValue.formatted()
            maximumLabel.text = values.maximumValue.formatted()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {
            return
        }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else {
            return
        }
        
        settingsVC.values = values
        
        settingsVC.delegate = self
    }
    
    //MARK: -IBActions
    @IBAction func getButtonPressed() {
        randomLabel.text = values.randomNumber.formatted()
    }
}

//MARK: - SettingsViewControllerDelegate
extension RandomViewController: SettingsViewControllerDelegate {
    func setNewValues(for values: Values) {
        self.values = values
    }
}
