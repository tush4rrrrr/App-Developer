//
//  ViewController.swift
//  MyiOS
//
//  Created by APPLE on 01/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceTax: UITextField!
    
    @IBOutlet weak var salesTax: UITextField!
    
    @IBOutlet weak var totalPriceTax: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Calculate(_ sender: Any) {
        
        let price=Double(priceTax.text!)!
        let salestax=Double(salesTax.text!)!
        let totalSalesTax=price*salestax
        let totalPrice=price+totalSalesTax
        
        totalPriceTax.text="$\(totalPrice)"
    }
}
    
       
    


