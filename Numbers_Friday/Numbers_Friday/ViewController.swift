//
//  ViewController.swift
//  Numbers_Friday
//
//  Created by Nabil Reimer on 04.11.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!

    func mainFunction(){
        var numberArray = Array(1...49)
        var numberWinner = [Int]()
        var allBtn = [btn1, btn2, btn3, btn4, btn5, btn6]
        
        while (numberWinner.count < 6) {
            var randumNumber = numberArray.randomElement()!
            numberWinner.append(randumNumber)
            if let positionNumber = numberArray.firstIndex(of: randumNumber){
                numberArray.remove(at: positionNumber)
            }
        
            numberWinner.sort()
        }
        
        for i in 0...5{
            allBtn[i]?.setTitle(String (numberWinner[i]), for: .normal)
        }
      
        
        
    }
    @IBAction func changeNumber(_ sender: Any) {
        mainFunction()
    }
}

