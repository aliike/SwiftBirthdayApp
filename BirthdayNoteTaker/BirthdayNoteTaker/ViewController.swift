//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Ali Yetim on 7.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayInputTextBox: UITextField!
    @IBOutlet weak var nameInputTextBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
    
    
    }


    @IBAction func SaveButton(_ sender: Any) {
        UserDefaults.standard.set(nameInputTextBox.text, forKey: "name")
        UserDefaults.standard.set(birthdayInputTextBox.text, forKey: "birthday")
        
        
        nameLabel.text = "Name: \(nameInputTextBox.text!)"
        birthdayLabel.text = "Birthday: \(birthdayInputTextBox.text!)"
    }
    
    @IBAction func DeleteButton(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
    
        if storedName as? String != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if storedBirthday as? String != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
    
    }
    
}

