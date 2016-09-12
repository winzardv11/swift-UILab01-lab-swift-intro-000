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
        
        lightBulb.backgroundColor = "red".color
        // this can also be done like this:
        // lightBulb.backgroundColor = UIColor.redColor() (which is what "red".color is returning, same thing.
        
    }

    func changeColor(to color: UIColor) {
        
        lightBulb.backgroundColor = color
        
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            changeColor(to: "red".color)
        case 1:
            changeColor(to: "blue".color)
        case 2:
            changeColor(to: "yellow".color)
        case 3:
            changeColor(to: "green".color)
        default:
            print("No such index.")
            
        }
        
    }
    
}
