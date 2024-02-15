//  ViewController.swift
//  Bankey
//  Created by chryshel fonseka on 2024-02-13.

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    let signInButton = UIButton(type: .system)
    let errorMsgLable = UILabel()
    
    var username: String? {
        return loginView.userNameTextField.text
    }
    
    var password: String? {
        return loginView.userPasswordTextField.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
}

extension LoginViewController {
    private func style() {
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8
        signInButton.setTitle("Sign In", for: [])
        signInButton.addTarget(self, action: #selector(signInTapped), for: .primaryActionTriggered)
        
        errorMsgLable.translatesAutoresizingMaskIntoConstraints = false
        errorMsgLable.textAlignment = .center
        errorMsgLable.textColor = .systemRed
        errorMsgLable.numberOfLines = 0
        errorMsgLable.isHidden = true
    }
    
    private func layout() {
        view.addSubview(loginView)
        view.addSubview(signInButton)
        view.addSubview(errorMsgLable)
        
        // LoginView
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1),
          
        ])
        
        // Button
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
           
        ])
        
        // Error Lable
        NSLayoutConstraint.activate([
            errorMsgLable.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            errorMsgLable.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            errorMsgLable.trailingAnchor.constraint(equalTo: loginView.trailingAnchor)
        ])
    }
}

extension LoginViewController{
   @objc func signInTapped(sender: UIButton){
       errorMsgLable.isHidden = true
       login()
    }
    
    private func login(){
        guard let username = username, let password = password else {
            assertionFailure("Username / password should nerver be nil")
            return
        }
        if username.isEmpty || password.isEmpty {
            configureView(withMessage: "Username / Password cannot be empty")
            return
        }
        
        if username == "chryshel" && password == "password" {
            signInButton.configuration?.showsActivityIndicator = true
        }else {
            configureView(withMessage: "Incorrect Username / Password")
            return
        }
    }
    
    private func configureView(withMessage message: String){
        errorMsgLable.isHidden = false
        errorMsgLable.text = message
    }
}
