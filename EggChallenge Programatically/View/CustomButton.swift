//
//  CustomButton.swift
//  EggChallenge Programatically
//
//  Created by Hüsamettin  Eyibil on 5.01.2020.
//  Copyright © 2020 Hüsamettin  Eyibil. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    override open var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 0.5308219178) : #colorLiteral(red: 0.652284264, green: 0.652284264, blue: 0.652284264, alpha: 0.1952054795)
        }
    }
    
}
