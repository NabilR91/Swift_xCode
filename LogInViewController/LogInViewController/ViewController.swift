//
//  ViewController.swift
//  LogInViewController
//
//  Created by Nabil Reimer on 21.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tvZwei: UITextField!
    @IBOutlet weak var tvEins: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showLabel(_ sender: Any) {
        label1.text = tvEins.text
    }
    
    
    @IBAction func hideLabel(_ sender: Any) {
        label1.text = ""
    }
    
}

