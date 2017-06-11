//
//  SettingsController.swift
//  ViewMe
//
//  Created by Ricky Avina on 5/14/17.
//  Copyright © 2017 InternTeam. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    
    /* Begin Settings*/
    
    let settingsLabel: UILabel = {
        let tl = UILabel()
        tl.textColor = UIColor(r: 25, g: 130, b: 102)
        tl.font = UIFont.boldSystemFont(ofSize: 30.0);
        tl.translatesAutoresizingMaskIntoConstraints = false
        tl.text = "Settings"
        return tl
    }()
    
    let nameLabel: UILabel = {
        let nl = UILabel()
        nl.textColor = UIColor(r: 20, g: 20, b: 20)
        nl.font = UIFont.systemFont(ofSize: 15.0, weight: 2.0)
        nl.translatesAutoresizingMaskIntoConstraints = false
        nl.text = "Name:"
        return nl
    }()
    
    let usernameLabel: UILabel = {
        let nl = UILabel()
        nl.textColor = UIColor(r: 20, g: 20, b: 20)
        nl.font = UIFont.systemFont(ofSize: 14, weight: 0.4)
        nl.translatesAutoresizingMaskIntoConstraints = false
        nl.text = "username"
        return nl
    }()
    
    let passwordLabel: UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor(r: 20, g: 20, b: 20)
        pl.font = UIFont.systemFont(ofSize: 15, weight: 2.0)
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = "Password:"
        return pl
    }()
    
    let userPasswordLabel: UILabel = {
        let pl = UILabel()
        pl.textColor = UIColor(r: 20, g: 20, b: 20)
        pl.font = UIFont.systemFont(ofSize: 14, weight: 0.4)
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.text = "password"
        return pl
    }()
    
    let emailLabel: UILabel = {
        let el = UILabel()
        el.textColor = UIColor(r: 20, g: 20, b: 20)
        el.font = UIFont.systemFont(ofSize: 15, weight: 2.0)
        el.translatesAutoresizingMaskIntoConstraints = false
        el.text = "Email:"
        return el
    }()
    
    let userEmailLabel: UILabel = {
        let el = UILabel()
        el.textColor = UIColor(r: 20, g: 20, b: 20)
        el.font = UIFont.systemFont(ofSize: 14, weight: 0.4)
        el.translatesAutoresizingMaskIntoConstraints = false
        el.text = "email"
        return el
    }()
    
    let settingsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        return view
    }()
    
    let nameSeparatorView = UISeparatorView()
    let emailSeparatorView = UISeparatorView()
    
    /* End Settings */
    /* Start Account */
    
    let accountLabel: UILabel = {
        let tl = UILabel()
        tl.textColor = UIColor(r: 25, g: 130, b: 102)
        tl.font = UIFont.boldSystemFont(ofSize: 30.0);
        tl.translatesAutoresizingMaskIntoConstraints = false
        tl.text = "Account"
        return tl
    }()
    
    let accountContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        return view
    }()
    
    let logoutLabel: UIView = {
        let logL = UILabel()
        logL.textColor = UIColor(r: 20, g: 20, b: 20)
        logL.font = UIFont.systemFont(ofSize: 15, weight: 2.0)
        logL.translatesAutoresizingMaskIntoConstraints = false
        logL.text = "Logout?"
        return logL
    }()
    
    let logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isUserInteractionEnabled = true
        button.backgroundColor = UIColor(r: 255, g: 255, b: 255)
        button.setImage(UIImage(named: "logout"), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.masksToBounds = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        button.addTarget(self, action: #selector(handleLogout), for: .touchUpInside)
        return button
    }()
    /* End Account */
    
    override func viewDidLoad() {
        setupUI()
    }
    
    func handleSegueBack(){
        dismiss(animated: true, completion: nil)
    }
    
    func handleLogout(){
        print("Logout")
    }
}
