//
//  ViewController.swift
//  Sample Alert
//
//  Created by Apple on 4/15/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
//  Email: sam@monkeyidesign.com
//  Author: Samreaksa Ros
//  Website: https://www.monkeyidesign.com
//  Tel: +85592 200069

import UIKit

class ViewController: UIViewController {

    let MonkeyiDesingTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Input your info"
        tf.isSecureTextEntry = true
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 5
        tf.font = UIFont.systemFont(ofSize: 14)
        
        return tf
    }()
    
    let showAlert: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Display Alert", for: .normal)
        btn.backgroundColor = UIColor(red: 68/255, green: 142/255, blue: 246/255, alpha:1.0)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        btn.layer.cornerRadius = 5
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(getAlert), for: .touchUpInside)
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(showAlert)
        showAlert.heightAnchor.constraint(equalToConstant: 40).isActive = true
        showAlert.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        showAlert.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showAlert.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        
        
    }
    @objc func getAlert(){
        createAlert(title: "Monkey iDesign", message: "Hi! My name is Samreaksa Ros and You?")
    }

    func createAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

