//
//  ShapeView.swift
//  It is Snowing
//
//  Created by Lekkas, Chris (Hillsboro) on 12/17/18.
//  Copyright © 2018 Lekkas, Chris (Hillsboro). All rights reserved.
//

import UIKit

class ShapeView: UIView {

    var strokeWidth : CGFloat = 2.0
    var strokeColor : UIColor = UIColor.black
    var fillColor : UIColor = UIColor.clear
    var path : UIBezierPath?
    
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
    
    override func layoutSubviews(){
        let layer = self.layer as! CAShapeLayer
        
        //take a copy of our original path, because we're about to stretch it
        guard let pathCopy = path?.copy() as? UIBezierPath else {
            return
        }
        
        //create a transform that stretches the path by our width and height, and apply it to the copy
        pathCopy.apply(CGAffineTransform(scaleX: bounds.width, y: bounds.height))
        
        //apply all our properties to the shape layers
        layer.strokeColor = strokeColor.cgColor
        layer.fillColor = fillColor.cgColor
        layer.lineWidth = strokeWidth
        layer.shadowColor = strokeColor.cgColor
        layer.shadowRadius = 5
        layer.shadowOffset = .zero
        layer.shadowOpacity = 1
        
        //convert the UIBezierPath to a CGPath and use it for the shape path
        layer.path = pathCopy.cgPath
    }
    
}
