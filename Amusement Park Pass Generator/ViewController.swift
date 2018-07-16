//
//  ViewController.swift
//  Amusement Park Pass Generator
//
//  Created by Thomas Dimnet on 11/06/2018.
//  Copyright © 2018 Thomas Dimnet. All rights reserved.
//

import UIKit


/*
 * Code snippet taken from stackoverflow.
 * Add border-width, border-radius and border-color for the IB.
 * link of the code snippet: https://stackoverflow.com/questions/28854469/change-uibutton-bordercolor-in-storyboard
 */
@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
/*
 * End of code snippet
 */

class ViewController: UIViewController {
    
    // Entrant Buttons
    @IBOutlet weak var guestEntrantButton: UIButton!
    
    
    //
    @IBOutlet weak var dateOfBirthField: UITextField!
    @IBOutlet weak var ssnField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Entrant Button Events
    
    @IBAction func onPressEntrantButton(_ sender: UIButton) {
        print("foo")
    }
}

