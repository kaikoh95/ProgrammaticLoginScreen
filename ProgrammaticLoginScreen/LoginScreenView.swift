//
//  LoginScreenView.swift
//  ProgrammaticLoginScreen
//
//  Created by Kurokikai on 9/07/19.
//  Copyright © 2019 Sprawty. All rights reserved.
//

import Foundation
import UIKit

extension LoginScreenViewController {
    func setupLoginContentView() {
        view.addSubview(loginContentView)
        
        loginContentView.addSubview(emailTextField)
        loginContentView.addSubview(passwordTextField)
        loginContentView.addSubview(loginButton)
        
        loginContentView.translatesAutoresizingMaskIntoConstraints = false //set this for Auto Layout to work!
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        setupEmailTextField()
        setupPasswordTextField()
        setupLoginButton()
    }
    
    func setupEmailTextField() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.isUserInteractionEnabled = true
        emailTextField.backgroundColor = .white

        emailTextField.frame.size.width = 200
        emailTextField.frame.size.height = 20
        
        emailTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        emailTextField.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true

        emailTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setupPasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.isUserInteractionEnabled = true
        passwordTextField.backgroundColor = .white
        
        passwordTextField.frame.size.width = 200
        passwordTextField.frame.size.height = 20
        
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 40).isActive = true
        passwordTextField.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true
        
        passwordTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setupLoginButton() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.isUserInteractionEnabled = true
        loginButton.backgroundColor = .white
        
        loginButton.frame.size.width = 100
        loginButton.frame.size.height = 30
        
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: loginContentView.centerXAnchor).isActive = true
        
        loginButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
