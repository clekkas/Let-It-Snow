//
//  GradientView.swift
//  It is Snowing
//
//  Created by Lekkas, Chris (Hillsboro) on 12/17/18.
//  Copyright © 2018 Lekkas, Chris (Hillsboro). All rights reserved.
//

import UIKit

class GradientView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    var startColor = UIColor.white
    var endColor = UIColor.white
    

    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    override func layoutSubviews() {
        (layer as! CAGradientLayer).colors = [startColor.cgColor, endColor.cgColor]
    }
    
}
