//
//  ViewController.swift
//  Tip Calc
//
//  Created by Eric Townsend on 1/16/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tiipOutput: UILabel!
    @IBOutlet weak var taxOutput: UILabel!
    @IBOutlet weak var totalOutput: UILabel!
    
    @IBOutlet weak var priceTextInput: UITextField!
    @IBOutlet weak var taxTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    
    var tip = "0"
    var tax = "0"
    var price = "0"
    var totalTip = "0"
    var totalTax = "0"
    var total = "0"
    var intTip = "0"
    var intTax = "0"
    var divider = "100"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    @IBAction func typePrice(sender: UITextField) {
       price = priceTextInput.text!
        print(price)
    }
    @IBAction func typeTip(sender: UITextField) {
       tip = tipTextField.text!
        print(tip)
    }
    @IBAction func typeTax(sender: UITextField) {
       tax = taxTextField.text!
        print(tax)
    }
    @IBAction func calculateTip(sender: AnyObject) {
        calcTotal()
    }
    
    func calcTotal () {
        
        intTip = "\(Double(tip)! / Double(divider)!)"
        totalTip = "\(Double(price)!*Double(intTip)!)"
        tiipOutput.text = totalTip
        
        intTax = "\(Double(tax)! / Double(divider)!)"
        totalTax = "\(Double(price)! * Double(intTax)!)"
        taxOutput.text = totalTax

        total = "\(Double(totalTip)! + Double(totalTax)! + Double(price)!)"
        totalOutput.text = total
        
        }
  
}

