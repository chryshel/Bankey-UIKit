//  UIViewController+Utils.swift
//  Bankey
//  Created by chryshel fonseka on 2024-02-21.


import UIKit

extension UIViewController {
    func setStatusBar(){
        let navBarApperance = UINavigationBarAppearance()
        navBarApperance.configureWithTransparentBackground()
        navBarApperance.backgroundColor = appColor
        UINavigationBar.appearance().standardAppearance = navBarApperance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarApperance
    }
    
    func setTabBarImage(imageName: String, title: String){
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName,withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
