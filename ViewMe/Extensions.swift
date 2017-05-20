//
//  Extensions.swift
//  ViewMe
//
//  Created by Ricky Avina on 5/20/17.
//  Copyright © 2017 InternTeam. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
