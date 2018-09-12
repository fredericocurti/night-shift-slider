//
//  ViewController.swift
//  Night Shift Slider
//
//  Created by Frederico Vilela Curti on 10/08/18.
//  Copyright © 2018 Frederico Vilela Curti. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func slider(sender : NSSlider) {
        let x: Double = sender.doubleValue
        print(x)
        // do something
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

