//
//  TabBarViewController.swift
//  ListaConvocadosCopa22
//
//  Created by Gabriel on 15/11/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTabBar()
        configItems()
    }
    
    func configItems() {
        
        guard let items = tabBar.items else { return }
        items[0].title = "Tela 01"
        items[0].image = UIImage(systemName: "soccerball.inverse")
        
    }
    
    func configTabBar() {
        tabBar.layer.borderWidth = 0.5
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        UITabBar.appearance().tintColor = .black
    }
    
}
