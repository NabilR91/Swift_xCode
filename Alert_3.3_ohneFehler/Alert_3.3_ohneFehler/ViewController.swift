//
//  ViewController.swift
//  Alert_3.3_ohneFehler
//
//  Created by Nabil Reimer on 09.11.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textfeld: UILabel!
    
    @IBAction func simpleAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "AlertAlert!!!", message: "Das ist ein Alert", preferredStyle: .alert)
        
        alert.addAction(
        UIAlertAction(title: "close", style: .default,
        handler: {(_) in alert.dismiss(animated:true)}
        ))
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sayHello(_ sender: Any) {
        
        let alert = UIAlertController(title: "Grüße", message: "willst du wirklich Hallo sagen?", preferredStyle: .alert)
                
                alert.addAction(
                    UIAlertAction(title: "close", style: .destructive,
                                  handler: { (_) in alert.dismiss(animated: true)}
                                 ))
                
                alert.addAction(UIAlertAction(title: "moin", style: .default, handler: {(_) in
                    self.textfeld.text! += "Hallo"
                }))
                
                present(alert, animated: true)
        
    }
    
    @IBAction func textfeldeingabe(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert, alert!", message: "Das ist ein Alert!", preferredStyle: .alert)
                
                alert.addTextField()
                
                alert.addAction(UIAlertAction(title: "Hinzufügen", style: .default, handler: {(_) in
                    let text = alert.textFields?.first?.text
                    if(!text!.isEmpty){
                        self.textfeld.text! += "\(text!)\n"
                    }
                }))
                
                alert.addAction(
                    UIAlertAction(title: "close", style: .destructive,
                                  handler: {(_) in alert.dismiss(animated:true)}
                                 ))
                
                present(alert, animated: true, completion: nil)
        
    }
    
}

