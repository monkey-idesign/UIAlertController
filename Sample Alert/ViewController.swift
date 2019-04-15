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
        //tf.isSecureTextEntry = true
        tf.layer.borderWidth = 1.0
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.layer.cornerRadius = 5
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.setPaddiing()
        
        return tf
    }()
    
    let bntShowAlert: UIButton = {
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
        
        view.addSubview(MonkeyiDesingTextField)
        
        MonkeyiDesingTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        MonkeyiDesingTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        MonkeyiDesingTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        //MonkeyiDesingTextField.widthAnchor.constraint(equalToConstant: 200).isActive = true
        //MonkeyiDesingTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        MonkeyiDesingTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        
        view.addSubview(bntShowAlert)
        bntShowAlert.heightAnchor.constraint(equalToConstant: 40).isActive = true
        bntShowAlert.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        bntShowAlert.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bntShowAlert.topAnchor.constraint(equalTo: MonkeyiDesingTextField.topAnchor, constant: 100).isActive = true
        
        
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
extension UITextField {
    
    func setPaddiing() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

