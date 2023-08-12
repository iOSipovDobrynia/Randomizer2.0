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
        
        minimumValueTF.delegate = self
        maximumValueTF.delegate = self
        
        minimumValueTF.text = values.minimumValue.formatted()
        maximumValueTF.text = values.maximumValue.formatted()
    }
    
    //MARK: -IBActions
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed() {
        view.endEditing(true)
        delegate.setNewValues(for: values)
        dismiss(animated: true)
    }
    
}

//MARK: -UITextFieldDelegate
extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let input = textField.text else { return }
        guard let newValue = Int(input) else { return }
        if textField == minimumValueTF {
            values.minimumValue = newValue
        } else if textField == maximumValueTF {
            values.maximumValue = newValue
        }
        
    }
}
