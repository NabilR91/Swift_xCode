//
//  ViewController.swift
//  farborakel.xcodeproj
//
//  Created by Nabil Reimer on 18.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnKreis: UIButton!
    @IBOutlet weak var btnBackg: UIButton!
    @IBOutlet weak var kreis: UIView!
    @IBOutlet var hintergrund: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kreis.layer.cornerRadius = 777/2
    }
    func randomcolor() -> UIColor{
            let red: CGFloat = CGFloat(drand48())
            let green: CGFloat = CGFloat(drand48())
            let blue: CGFloat = CGFloat(drand48())
            return UIColor(red:red, green:green, blue:blue, alpha: 1.0)
        }

    

    @IBAction func hintergrundFarbe(_ sender: Any) {
        hintergrund.backgroundColor = randomcolor()
    }
    
    @IBAction func kreisFarbe(_ sender: Any) {
        kreis.backgroundColor = randomcolor()
    }
    
}

