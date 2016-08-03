//
//  GaugeLayer.swift
//  Gauge
//
//  Created by Daniele Candotti on 03/08/2016.
//  Copyright © 2016 Daniele Candotti. All rights reserved.
//

import UIKit

class GaugeLayer: CAShapeLayer {
    
    convenience init(lineWidth: CGFloat,
                     value: CGFloat,
                     color: UIColor,
                     bounds: CGRect)
    {
        self.init()
        let arcDiameter: CGFloat = bounds.width - lineWidth
        let center = CGPointMake(bounds.size.width/2,
                                 bounds.size.height)
        path = UIBezierPath.init(arcCenter: center,
                                 radius: arcDiameter/2,
                                 startAngle: CGFloat(M_PI),
                                 endAngle: value, clockwise: true).CGPath
        self.lineWidth = lineWidth
        self.strokeColor = color.CGColor
        self.fillColor = UIColor.clearColor().CGColor
        self.strokeEnd = strokeEnd
    }
}
