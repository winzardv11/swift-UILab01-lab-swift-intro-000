//
//  ViewController.swift
//  LightBulb
//
//  Created by Michael Dippery on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

enum Hue: Int {
    case Red = 0, Yellow, Blue, Green

    func toColor() -> UIColor {
        switch self {
        case .Red: return UIColor.redColor()
        case .Yellow: return UIColor.yellowColor()
        case .Blue: return UIColor.blueColor()
        case .Green: return UIColor.greenColor()
        }
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var lightBulb: UIView!

    override func viewDidLoad() {
        changeColor(to: .Red)
    }

    func changeColor(to hue: Hue) {
        lightBulb.backgroundColor = hue.toColor()
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        let hue = Hue(rawValue: sender.selectedSegmentIndex)!
        changeColor(to: hue)
    }
}
