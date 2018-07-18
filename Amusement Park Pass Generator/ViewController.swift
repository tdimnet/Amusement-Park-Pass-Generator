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
    
    // MARK: IBOutlet
    
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
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var companyField: UITextField!
    @IBOutlet weak var streetAddressField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateField: UITextField!
    @IBOutlet weak var zipCodeField: UITextField!
    
    // MARK: Stored Properties
    var entrantType: String? = nil
    
    
    // MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Internal Methods
    
    // Show text alert
    func showAlertWith(title: String, message: String, style: UIAlertControllerStyle = .alert) -> Void {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    // MARK: IBAction
    
    // Select Entrant Type Event
    @IBAction func onPressEntrantButton(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            
            self.entrantType = title
            
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
    
    // Select Sub Entrant Event
    @IBAction func onPressSubEntrantButton(_ sender: UIButton) {
        // First unselect all sub entrant buttons
        firstSubEntrantButton.isSelected = false
        secondSubEntrantButton.isSelected = false
        thirdSubEntrantButton.isSelected = false
        fourthSubEntrantButton.isSelected = false
        fifthSubEntrantButton.isSelected = false
        
        // Then select the sender
        sender.isSelected = true
    }
    
    // Generate Pass Event
    @IBAction func onPressGeneratePassButton(_ sender: UIButton) {
        
        
        if let entrantType = self.entrantType {
            if entrantType == "Employee" {
                print("Entrant is an employee")
                
                do {
                    let employee = try Employee(
                        entrantType: .foodServicesEmployee,
                        dateOfBirth: nil,
                        firstName: nil,
                        lastName: nil,
                        streetAddress: nil,
                        city: nil,
                        state: nil,
                        zipCode: nil
                    )
                } catch let error {
                    guard let error = error as? EntrantErrors else { return }
                    var message = ""
                    switch error {
                    case .entrantError(let reason):
                        message = reason
                    case .nameError(let reason):
                        message = reason
                    case .addressError(let reason):
                        message = reason
                    }
                    showAlertWith(title: "Something is missing!", message: message)
                }
            } else {
                print("Do nothing for now")
            }
        }
    }
    
}

