//
//  UISeparatorView.swift
//  ViewMe
//
//  Created by Ricky Avina on 5/20/17.
//  Copyright © 2017 InternTeam. All rights reserved.
//

import UIKit

class UISeparatorView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        didLoad()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func didLoad(){
        backgroundColor = UIColor(r: 220, g: 220, b: 220)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
