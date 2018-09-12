//
//  SliderViewController.swift
//  Night Shift Slider
//
//  Created by Frederico Vilela Curti on 10/08/18.
//  Copyright © 2018 Frederico Vilela Curti. All rights reserved.
//

import Cocoa

class SliderViewController: NSViewController {
    @IBOutlet weak var amountSlider: NSSlider!
    @IBOutlet weak var closeButton: NSButton!
    
    var bluelightClient:CBBlueLightClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func buttonTapped(_ sender: NSButton) {
        exit(0)
    }
    
    @IBAction func sliderChanged(_ sender: NSSlider) {
        bluelightClient = CBBlueLightClient()
        var amount = Float(amountSlider.integerValue)
        amount = amount/100
        print(amount)
        bluelightClient.setStrength(amount, commit: true)
        bluelightClient.setEnabled(true)
    }
    

    
}

extension SliderViewController {
    // MARK: Storyboard instantiation
    static func freshController() -> SliderViewController {
        //1.
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        //2.
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "SliderViewController")
        //3.
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? SliderViewController else {
            fatalError("Why cant i find QuotesViewController? - Check Main.storyboard")
        }
        return viewcontroller
    }
}
