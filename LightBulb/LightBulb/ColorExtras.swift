//
//  StringExtras.swift
//  LightBulb
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

extension String {
    var color: UIColor {
        switch lowercaseString {
        case "red": return UIColor.redColor()
        case "yellow": return UIColor.yellowColor()
        case "blue": return UIColor.blueColor()
        case "green": return UIColor.greenColor()
        default: assert(false, "Invalid color name: \(self)")
        }
    }
}

extension UISegmentedControl {
    var color: UIColor {
        switch selectedSegmentIndex {
        case 0: return UIColor.redColor()
        case 1: return UIColor.yellowColor()
        case 2: return UIColor.blueColor()
        case 3: return UIColor.greenColor()
        default: assert(false, "Invalid color index: \(selectedSegmentIndex)")
        }
    }
}
