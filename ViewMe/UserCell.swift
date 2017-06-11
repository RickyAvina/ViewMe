//
//  UserCell.swift
//  ViewMe
//
//  Created by Ricky Avina on 6/10/17.
//  Copyright © 2017 InternTeam. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    let backgroundImageView: UIImageView = {
        let bv = UIImageView()
        bv.translatesAutoresizingMaskIntoConstraints = false
        bv.contentMode = .scaleAspectFit
        bv.layer.masksToBounds = true
        return bv
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 24
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let caption: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        addSubview(backgroundImageView)
        addSubview(profileImageView)
        addSubview(caption)
        
        // iOS9 contraint anchors - x,y,width,height
        
        backgroundImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        backgroundImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0).isActive = true
        backgroundImageView.widthAnchor.constraint(equalTo: self.widthAnchor, constant: 0).isActive = true
        backgroundImageView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 0).isActive = true
        
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 24).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 48).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 48).isActive = true
        
        caption.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        caption.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12).isActive = true
        caption.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        caption.heightAnchor.constraint(equalToConstant: 12).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
