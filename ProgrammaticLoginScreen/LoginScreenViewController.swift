//
//  LoginScreenViewController.swift
//  ProgrammaticLoginScreen
//
//  Created by Kurokikai on 9/07/19.
//  Copyright © 2019 Sprawty. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    let loginContentView:UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "EMAIL"
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "PASSWORD (MIN. 8 CHARACTERS)"
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.addTarget(
            self,
            action: #selector(loginButtonPressed),
            for: UIControl.Event.touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .blue
        setupLoginContentView()
    }

    @objc func loginButtonPressed(sender: UIButton!) {
    
    }
}

