//  LoginView.swift
//  Bankey
//  Created by chryshel fonseka on 2024-02-13.

import Foundation
import UIKit

class LoginView: UIView {
    
    let statckView = UIStackView()
    let userNameTextField = UITextField()
    let userPasswordTextField = UITextField()
    let dividerView = UIView()
    
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
        backgroundColor = .secondarySystemBackground
        
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
        
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        dividerView.backgroundColor = .secondarySystemFill
        
        layer.cornerRadius = 5
        clipsToBounds = true
        
    }
    func layout(){
        
        statckView.addArrangedSubview(userNameTextField)
        statckView.addArrangedSubview(dividerView)
        statckView.addArrangedSubview(userPasswordTextField)
        
        addSubview(statckView)
        
        NSLayoutConstraint.activate([
            statckView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            statckView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: statckView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: statckView.bottomAnchor, multiplier: 1)
        ])
        
        dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}

extension LoginView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userNameTextField.endEditing(true)
        userPasswordTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
       return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
}
