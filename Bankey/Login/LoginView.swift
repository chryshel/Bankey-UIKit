//  LoginView.swift
//  Bankey
//  Created by chryshel fonseka on 2024-02-13.

import Foundation
import UIKit

class LoginView: UIView {
    
    let statckView = UIStackView()
    let userNameTextField = UITextField()
    let userPasswordTextField = UITextField()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }

}
extension LoginView {
    
    func style(){
        translatesAutoresizingMaskIntoConstraints = true
        backgroundColor = .red
        
        statckView.translatesAutoresizingMaskIntoConstraints = false
        statckView.axis = .vertical
        statckView.spacing = 8
        
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.placeholder = "Username"
        userNameTextField.delegate = self
        
        userPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        userPasswordTextField.placeholder = "Password"
        userPasswordTextField.isSecureTextEntry = true
        userPasswordTextField.delegate = self
    }
    func layout(){
        
        statckView.addArrangedSubview(userNameTextField)
        statckView.addArrangedSubview(userPasswordTextField)
        
        addSubview(statckView)
        
        NSLayoutConstraint.activate([
            statckView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            statckView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: statckView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: statckView.bottomAnchor, multiplier: 1)
        ])
    }
}

extension LoginView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.endEditing(true)
        userPasswordTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        }else {
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
}
