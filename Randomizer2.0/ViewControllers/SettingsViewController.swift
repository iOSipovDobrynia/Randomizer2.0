//
//  SettingsViewController.swift
//  Randomizer2.0
//
//  Created by Goodwasp on 22.07.2023.
//

import UIKit

final class SettingsViewController: UIViewController {
    //MARK: -IBOutlets
    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    
    //MARK: -Public properties
    var values: Values!
    var delegate: SettingsViewControllerDelegate!
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumValueTF.text = values.minimumValue.formatted()
        maximumValueTF.text = values.maximumValue.formatted()
    }
    
    //MARK: -IBActions
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed() {
        delegate.setNewValues(
            for: Values(
                minimumValue: Int(minimumValueTF.text ?? "0") ?? 0,
                maximumValue: Int(maximumValueTF.text ?? "100") ?? 100
            )
        )
        dismiss(animated: true)
    }
    
}

//MARK: -UITextFieldDelegate
extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        return 
    }
}
