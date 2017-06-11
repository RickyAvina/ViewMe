//
//  SettingsController+Extensions.swift
//  ViewMe
//
//  Created by Ricky Avina on 6/10/17.
//  Copyright © 2017 InternTeam. All rights reserved.
//

import UIKit

extension SettingsController {
    
    func setupUI(){
        navigationItem.title = "Settings"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(handleSegueBack))
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        
        settupSettings()
        setupAccount()
    }
    
    func setupAccount(){
        view.addSubview(accountLabel)
        setupAccountLabel()
        
        view.addSubview(accountContainerView)
        setupAccountContainerView()
        
        view.addSubview(logoutLabel)
        setupLogoutLabels()
        
        view.addSubview(logoutButton)
        setupLogoutButton()
    }
    
    func setupLogoutLabels(){
        self.view.addConstraint(NSLayoutConstraint(item: logoutLabel, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: accountContainerView, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 14))
        self.view.addConstraint(NSLayoutConstraint(item: logoutLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: accountContainerView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
    }
    
    func setupLogoutButton(){
        logoutButton.rightAnchor.constraint(equalTo: accountContainerView.rightAnchor, constant: -16).isActive = true
        logoutButton.centerYAnchor.constraint(equalTo: accountContainerView.centerYAnchor).isActive = true
        logoutButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        logoutButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    func setupAccountContainerView(){
        accountContainerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        accountContainerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        accountContainerView.topAnchor.constraint(equalTo: accountLabel.bottomAnchor, constant: 20).isActive = true
        accountContainerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupAccountLabel(){
        let accountCenterH = NSLayoutConstraint(item: accountLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 1)
        
        let accountCenterV = NSLayoutConstraint(item: accountLabel, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: -10)
        
        self.view.addConstraint(accountCenterH)
        self.view.addConstraint(accountCenterV)
    }
    
    func settupSettings(){
        view.addSubview(settingsContainerView)
        view.addSubview(nameSeparatorView)
        view.addSubview(emailSeparatorView)
        
        setupSettingsContainerView()
        setupNameSeparatorView()
        setupSettingsLabels()
        setupEmailSeparatorView()
    }
    
    func setupEmailSeparatorView(){
        emailSeparatorView.leftAnchor.constraint(equalTo: settingsContainerView.leftAnchor, constant: 8).isActive = true
        emailSeparatorView.rightAnchor.constraint(equalTo: settingsContainerView.rightAnchor, constant: -8).isActive = true
        emailSeparatorView.topAnchor.constraint(equalTo: nameSeparatorView.bottomAnchor, constant: 50).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    func setupSettingsLabels(){
        view.addSubview(settingsLabel)
        setupTitleLabel()
        
        view.addSubview(nameLabel)
        view.addSubview(usernameLabel)
        setupNameLabels()
        
        view.addSubview(passwordLabel)
        view.addSubview(userPasswordLabel)
        setupPasswordLabels()
        
        view.addSubview(emailLabel)
        view.addSubview(userEmailLabel)
        setupEmailLabels()
    }
    
    func setupNameLabels(){
        self.view.addConstraint(NSLayoutConstraint(item: nameLabel, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: settingsContainerView, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 14))
        self.view.addConstraint(NSLayoutConstraint(item: nameLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: settingsContainerView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
        
        self.view.addConstraint(NSLayoutConstraint(item: usernameLabel, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: settingsContainerView, attribute: NSLayoutAttribute.right, multiplier: 1, constant: -16))
        self.view.addConstraint(NSLayoutConstraint(item: usernameLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: settingsContainerView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
    }
    
    func setupPasswordLabels(){
        self.view.addConstraint(NSLayoutConstraint(item: passwordLabel, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: settingsContainerView, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: passwordLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: nameSeparatorView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
        
        self.view.addConstraint(NSLayoutConstraint(item: userPasswordLabel, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: settingsContainerView, attribute: NSLayoutAttribute.right, multiplier: 1, constant: -16))
        self.view.addConstraint(NSLayoutConstraint(item: userPasswordLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: nameSeparatorView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
    }
    
    func setupEmailLabels(){
        self.view.addConstraint(NSLayoutConstraint(item: emailLabel, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: settingsContainerView, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 10))
        self.view.addConstraint(NSLayoutConstraint(item: emailLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: emailSeparatorView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
        
        self.view.addConstraint(NSLayoutConstraint(item: userEmailLabel, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: settingsContainerView, attribute: NSLayoutAttribute.right, multiplier: 1, constant: -16))
        self.view.addConstraint(NSLayoutConstraint(item: userEmailLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: emailSeparatorView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
    }
    
    func setupTitleLabel(){
        let centerH = NSLayoutConstraint(item: settingsLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 1)
        
        let centerV = NSLayoutConstraint(item: settingsLabel, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: -240)
        
        self.view.addConstraint(centerH)
        self.view.addConstraint(centerV)
    }
    
    func setupSettingsContainerView(){
        settingsContainerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        settingsContainerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        settingsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -120).isActive = true
        settingsContainerView.heightAnchor.constraint(equalToConstant: 160).isActive = true
    }
    
    func setupNameSeparatorView(){
        nameSeparatorView.leftAnchor.constraint(equalTo: settingsContainerView.leftAnchor, constant: 8).isActive = true
        nameSeparatorView.rightAnchor.constraint(equalTo: settingsContainerView.rightAnchor, constant: -8).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: settingsContainerView.topAnchor, constant: 50).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
}
