//
//  ViewController.swift
//  UserDefaultsProject
//
//  Created by Bayram Yeleç on 25.07.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var notTextField: UITextField!
    @IBOutlet weak var zamanTextField: UITextField!

    @IBOutlet weak var isLabel: UILabel!
    @IBOutlet weak var zamanLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let girilenNot = UserDefaults.standard.object(forKey: "not")
        let girilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if let gelenNot = girilenNot as? String {
            isLabel.text = "Yapılacak iş : \(gelenNot)"
        }
        if let gelenZaman = girilenZaman as? String {
            zamanLabel.text = "Yapılacak zaman : \(gelenZaman)"
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(notTextField.text, forKey: "not")
        UserDefaults.standard.set(zamanTextField.text, forKey: "zaman")
        
        isLabel.text = "Yapılacak iş : \(notTextField.text!)"
        zamanLabel.text = "Yapılacak zaman : \(zamanTextField.text!)"
    }
    
    
    @IBAction func silButton(_ sender: Any) {
        let girilenNot = UserDefaults.standard.object(forKey: "not")
        let girilenZaman = UserDefaults.standard.object(forKey: "zaman")
        
        if (girilenNot as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "not")
            isLabel.text = "Yapılacak iş :"
        }
        if (girilenZaman as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "zaman")
            zamanLabel.text = "Yapılacak zaman :"
        }
    }
}

