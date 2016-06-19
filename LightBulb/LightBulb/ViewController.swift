//
//  ViewController.swift
//  LightBulb
//
//  Created by Michael Dippery on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightBulb: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Change background color to red
    }

    func colorFromString(name: String) -> UIColor {
        switch name.lowercaseString {
        case "red": return UIColor.redColor()
        case "yellow": return UIColor.yellowColor()
        case "blue": return UIColor.blueColor()
        case "green": return UIColor.greenColor()
        default: assert(false, "Invalid value: \(name)")
        }
    }

    func colorFromSegment(i: Int) -> UIColor {
        switch i {
        case 0: return UIColor.redColor()
        case 1: return UIColor.yellowColor()
        case 2: return UIColor.blueColor()
        case 3: return UIColor.greenColor()
        default: assert(false, "Invalid value: \(i)")
        }
    }

    func changeColor(to color: UIColor) {
        // TODO: Change background color to "color"
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        print("Selected segment: \(sender.selectedSegmentIndex)")
        // TODO: Change background color when segmented control changes
    }
}
