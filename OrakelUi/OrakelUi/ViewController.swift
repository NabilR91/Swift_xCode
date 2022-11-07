//
//  ViewController.swift
//  OrakelUi
//
//  Created by Nabil Reimer on 03.11.22.
//

import UIKit

enum Orakel {
case positiv, neutral, negativ
}

let positivArray = ["Mit sicherheit", "Klar!!", "Bestimmt"]
let neutralArray = ["Vielleicht", "Kann sein", "Egal"]
let negativArray = ["Nein", "Niemals!!", "Kannst du vergessen"]


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var text: UILabel!
    @IBAction func button(_ sender: Any) {
        
        
        var situation  = [Orakel.negativ, Orakel.positiv, Orakel.neutral].randomElement()!


        switch situation{
        case .positiv: text.text=positivArray.randomElement()!
            text.textColor = UIColor.green
        case .neutral: text.text=neutralArray.randomElement()!
            text.textColor = UIColor.white
        case .negativ: text.text=negativArray.randomElement()!
            text.textColor = UIColor.red
        }
    }
    
}

 
