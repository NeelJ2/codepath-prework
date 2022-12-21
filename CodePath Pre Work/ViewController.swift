//
//  ViewController.swift
//  CodePath Pre Work
//
//  Created by ok on 12/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var last: UITextField!
    @IBOutlet weak var school: UITextField!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
       
       numberOfPetsLabel.text = "\(Int(sender.value))"
   }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Let's us chose the title we have selected from the segmented control
        let year = segment.titleForSegment(at: segment.selectedSegmentIndex)
        
        // Creating a variable of type string, that holds an introduction. The introduction interpolates the values from the text fields provided.
        // Currently we can only present the information in a print statement. However, this lets us verify that our app is printing out what is intended!
        let introduction = "My name is \(first.text!) \(last.text!) and I attend \(school.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(`switch`.isOn) that I want more pets."
        
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

