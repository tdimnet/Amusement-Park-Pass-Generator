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
    @IBOutlet weak var employeeEntrantButton: UIButton!
    @IBOutlet weak var managerEntrantButton: UIButton!
    @IBOutlet weak var vendorEntrantButton: UIButton!
    
    
    // Sub Entrant View
    @IBOutlet weak var subEntrantTypeView: UIView!
    
    
    // Sub Entrant Buttons
    @IBOutlet weak var firstSubEntrantButton: UIButton!
    @IBOutlet weak var secondSubEntrantButton: UIButton!
    @IBOutlet weak var thirdSubEntrantButton: UIButton!
    @IBOutlet weak var fourthSubEntrantButton: UIButton!
    @IBOutlet weak var fifthSubEntrantButton: UIButton!
    
    
    // Form Fields
    @IBOutlet weak var dateOfBirthField: UITextField!
    @IBOutlet weak var ssnField: UITextField!
    @IBOutlet weak var projectField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Entrant Button Events
    @IBAction func onPressEntrantButton(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            print(title)
            if title == "Guest" {
                // Set the sender state as selected
                sender.isSelected = true
                
                // Set the other Entrant Buttons as unselected
                employeeEntrantButton.isSelected = false
                managerEntrantButton.isSelected = false
                vendorEntrantButton.isSelected = false
                
                // Set the background color
                subEntrantTypeView.backgroundColor = .lightGray
                
                // Disabled SSN and Project Field
                ssnField.isEnabled = false
                projectField.isEnabled = false
                
                // Change the text of all the buttons
                firstSubEntrantButton.isHidden = false
                firstSubEntrantButton.setTitle("Child", for: .normal)
                firstSubEntrantButton.setTitle("Child", for: .highlighted)
                
                secondSubEntrantButton.isHidden = false
                secondSubEntrantButton.setTitle("Adult", for: .normal)
                secondSubEntrantButton.setTitle("Adult", for: .highlighted)
                
                thirdSubEntrantButton.isHidden = false
                thirdSubEntrantButton.setTitle("Senior", for: .normal)
                thirdSubEntrantButton.setTitle("Senior", for: .highlighted)
                
                fourthSubEntrantButton.isHidden = false
                fourthSubEntrantButton.setTitle("VIP", for: .normal)
                fourthSubEntrantButton.setTitle("VIP", for: .highlighted)
                
                fifthSubEntrantButton.isHidden = false
                fifthSubEntrantButton.setTitle("Season Pass Guest", for: .normal)
                fifthSubEntrantButton.setTitle("Season Pass Guest", for: .highlighted)
                
                // Show all the sub entrants
                subEntrantTypeView.isHidden = false
                
            } else if title == "Employee" {
                // Set the sender state as selected
                sender.isSelected = true
                
                // Set the other Entrant Buttons as unselected
                guestEntrantButton.isSelected = false
                managerEntrantButton.isSelected = false
                vendorEntrantButton.isSelected = false
                
                // Set the background color
                subEntrantTypeView.backgroundColor = .darkGray
                
                // Enable SSN and Project Field
                ssnField.isEnabled = true
                projectField.isEnabled = true
                
                // Change the text of all the buttons
                firstSubEntrantButton.setTitle("Food Service Employee", for: .normal)
                firstSubEntrantButton.setTitle("Food Service Employee", for: .highlighted)
                
                secondSubEntrantButton.isHidden = false
                secondSubEntrantButton.setTitle("Ride Service Employee", for: .normal)
                secondSubEntrantButton.setTitle("Ride Service Employee", for: .highlighted)
                
                thirdSubEntrantButton.isHidden = false
                thirdSubEntrantButton.setTitle("Maintenance Employee", for: .normal)
                thirdSubEntrantButton.setTitle("Maintenance Employee", for: .highlighted)
                
                fourthSubEntrantButton.isHidden = false
                fourthSubEntrantButton.setTitle("Contract Employee", for: .normal)
                fourthSubEntrantButton.setTitle("Contract Employee", for: .highlighted)
                
                fifthSubEntrantButton.isHidden = true
                
                // Show all the sub entrants
                subEntrantTypeView.isHidden = false
            } else if title == "Manager" {
                // Set the sender state as selected
                sender.isSelected = true
                
                // Set the other Entrant Buttons as unselected
                guestEntrantButton.isSelected = false
                employeeEntrantButton.isSelected = false
                vendorEntrantButton.isSelected = false
                
                // Hide all the sub entrants
                subEntrantTypeView.isHidden = true
            } else {
                // Set the sender state as selected
                sender.isSelected = true
                
                // Set the other Entrant Buttons as unselected
                guestEntrantButton.isSelected = false
                employeeEntrantButton.isSelected = false
                managerEntrantButton.isSelected = false
                
                // Hide all the sub entrants
                subEntrantTypeView.isHidden = true
            }
        }
    }
}

