//
//  ViewController.swift
//  Gauge
//
//  Created by Daniele Candotti on 03/08/2016.
//  Copyright © 2016 Daniele Candotti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gaugeView: GaugeView!
    @IBOutlet weak var currentValueLabel: UILabel!
    @IBAction func updateGaugeWithRandomValue(){
        let value = randomBetweenNumbers(0.0, secondNum: 1.0)
        currentValueLabel.text = String(format: "%.1f", value)
        gaugeView.updateGauge(value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
    }
}

