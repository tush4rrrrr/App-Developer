//
//  ViewController.swift
//  Ginger
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0
    var previousNumber:Double = 0
    var performMathOp = false
    var operation = 0
    
    
    @IBOutlet weak var calclabel: UILabel!
    
    
   @IBAction func OperatorBtn(_ sender: UIButton)
    {
        if calclabel.text != "" && sender.tag != 15 && sender.tag != 16
        {
            previousNumber = Double(calclabel.text!)!
            // Addition
            if sender.tag == 11
            {
                calclabel.text = "+"
            }
            // Subtraction
            else if sender.tag == 12
            {
                calclabel.text = "-"
            }
            // Division
            else if sender.tag == 13
            {
                calclabel.text = "/"
            }
            // Multiplication
            else if sender.tag == 14
            {
                calclabel.text = "*"
            }
            operation = sender.tag
            performMathOp = true
        }
        
        else if sender.tag == 16
        {
            if operation == 11
            {
           calclabel.text = String(previousNumber + numberOnScreen)
            }
            else if operation == 12
            {
                calclabel.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 13
            {
                calclabel.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 14
            {
                calclabel.text = String(previousNumber * numberOnScreen)
            }
        }
       else if sender.tag == 15
        {
        calclabel.text = ""
        previousNumber = 0
        numberOnScreen = 0
        operation = 0
     }
       
    }
    
    @IBAction func OperandBtn(_ sender: UIButton)
    {
        if performMathOp==true
        {
            calclabel.text = String(sender.tag - 1)
            numberOnScreen = Double(calclabel.text!)!
            performMathOp = false
        }
        else{
        
        calclabel.text = calclabel.text! + String(sender.tag - 1)
        numberOnScreen = Double(calclabel.text!)!
        
        }
        
    }
    
    
    
    

    
    override  func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



