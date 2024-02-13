//  LoginView.swift
//  Bankey
//  Created by chryshel fonseka on 2024-02-13.

import Foundation
import UIKit

class ExampleViewName: UIView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
}
extension ExampleViewName {
    
    func style(){
        translatesAutoresizingMaskIntoConstraints = true
    }
    func layout(){
        
    }
}
