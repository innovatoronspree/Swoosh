//
//  ButtonLayer.swift
//  Swoosh
//
//  Created by Keshav Sharma on 31/01/20.
//  Copyright © 2020 Keshav Sharma. All rights reserved.
//

import UIKit

class ButtonLayer: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 4.0
     layer.borderColor = UIColor.white.cgColor
        
    }
        
    
    
}
