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
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
    }
    
    //MARK: -IBActions
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
    
    @IBAction func saveButtonPressed() {
        dismiss(animated: true)
    }
    
}
