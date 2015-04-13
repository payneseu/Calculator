//
//  ViewController.swift
//  Calculator
//
//  Created by Peng Li on 4/12/15.
//  Copyright (c) 2015 Peng Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingNumber: Bool = false

    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!;
        if (userIsInTheMiddleOfTypingNumber){
            display.text = display.text! + digit

        } else {
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
        println("digit = \(digit)")
    }

    var operandStack = Array<Double>()
    @IBAction func enter() {
        userIsInTheMiddleOfTypingNumber = false
       // operandStack.append(display.text!)
    }
}

