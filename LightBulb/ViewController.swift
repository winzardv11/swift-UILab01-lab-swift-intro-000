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
        
        // TODO: Change background color of lightBulb view to red
        
    }

    func changeColor(to color: UIColor) {
        
        // TODO: Change background color to "color"
        
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        
        print("The selected index is \(sender.selectedSegmentIndex)")
        
        // TODO: Change background color when segmented control changes
    }
}
