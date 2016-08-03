//
//  GaugeView.swift
//  Gauge
//
//  Created by Daniele Candotti on 03/08/2016.
//  Copyright © 2016 Daniele Candotti. All rights reserved.
//

import UIKit

@IBDesignable
class GaugeView: UIView {

    private var circleLayer: GaugeLayer!
    
    private func addLayer(){
        circleLayer = GaugeLayer(lineWidth: 30,
                                 value:CGFloat(M_PI*2),
                                 color: UIColor.redColor(),
                                 bounds: bounds)
        layer.insertSublayer(circleLayer, atIndex: 0)
    }
    
    override func layoutSubviews() {
        
        if circleLayer == nil {
            self.addLayer()
        }
    
    }
    func updateGauge(value:CGFloat){
        circleLayer.strokeEnd = value
    }
}
