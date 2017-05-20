//
//  SettingsController.swift
//  ViewMe
//
//  Created by Ricky Avina on 5/14/17.
//  Copyright © 2017 InternTeam. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    
    let titleLabel: UILabel = {
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
        el.font = UIFont.systemFont(ofSize: 15, weight: 0.4)
        el.translatesAutoresizingMaskIntoConstraints = false
        el.text = "Email:"
        return el
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        return view
    }()
    
    let nameSeparatorView = UISeparatorView()
    let emailSeparatorView = UISeparatorView()
    
    override func viewDidLoad() {
        setupUI()
    }
    
    func setupUI(){
        navigationItem.title = "Settings"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(handleSegueBack))
        view.backgroundColor = UIColor(r: 220, g: 220, b: 220)
        
        view.addSubview(containerView)
        view.addSubview(nameSeparatorView)
        view.addSubview(emailSeparatorView)
        
        setupContainerView()
        setupNameSeparatorView()
        setupLabels()
        setupEmailSeparatorView()
    }
    
    
    func setupEmailSeparatorView(){
        emailSeparatorView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8).isActive = true
        emailSeparatorView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8).isActive = true
        emailSeparatorView.topAnchor.constraint(equalTo: nameSeparatorView.bottomAnchor, constant: 50).isActive = true
        emailSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    func setupLabels(){
        view.addSubview(titleLabel)
        setupTitleLabel()
        
        view.addSubview(nameLabel)
        view.addSubview(usernameLabel)
        setupNameLabels()
    }
    
    func setupNameLabels(){
        self.view.addConstraint(NSLayoutConstraint(item: nameLabel, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: containerView, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 16))
        self.view.addConstraint(NSLayoutConstraint(item: nameLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: containerView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
        
        self.view.addConstraint(NSLayoutConstraint(item: usernameLabel, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: containerView, attribute: NSLayoutAttribute.right, multiplier: 1, constant: -16))
        self.view.addConstraint(NSLayoutConstraint(item: usernameLabel, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: containerView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20))
    }
    
    func setupTitleLabel(){
        let centerH = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 1)
        
        let centerV = NSLayoutConstraint(item: titleLabel, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self.view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: -240)
        
        self.view.addConstraint(centerH)
        self.view.addConstraint(centerV)
    }
    
    func handleSegueBack(){
        dismiss(animated: true, completion: nil)
    }
    
    func setupContainerView(){
        containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -160).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    func setupNameSeparatorView(){
        nameSeparatorView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 8).isActive = true
        nameSeparatorView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8).isActive = true
        nameSeparatorView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50).isActive = true
        nameSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}
