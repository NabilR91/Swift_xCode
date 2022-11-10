//
//  ViewController.swift
//  swift_3.4_UITableView
//
//  Created by Nabil Reimer on 10.11.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return toEdit.count
        }else{
            return isEdit.count
        }
        
        return toEdit.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Hinzugefügt"
        } else {
            return "Nicht hinzugefügt"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hinzufuegen", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.section == 0 {
            content.text = toEdit[indexPath.row]
            cell.contentConfiguration = content
        }else{
            content.text = isEdit[indexPath.row]
            cell.contentConfiguration = content
        }
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            toEdit.remove(at: indexPath.row)
            tableView.reloadData()
        }

        
    }
    
    var toEdit: [String] = []
    var isEdit: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func editBtn(_ sender: Any) {
    }
    
    
    @IBAction func plusBtn(_ sender: Any) {
        let alert = UIAlertController(title: "Hinzufügen", message: "Was machtest du hinzufügen?", preferredStyle: .alert)
        
        //öffnet ein Textfeld in der Allert animation
        alert.addTextField()
        
        //fügt ein Button in die Alert animation hinzu
        alert.addAction(UIAlertAction(title: "Hinzufügen", style: .default, handler: {(_) in
            let text = alert.textFields?.first?.text
            self.toEdit.append(text!)
            self.tableView.reloadData()
        }
    )
)
                                      
        //fügt ein Button in die Alert animation hinzu
        alert.addAction(UIAlertAction(title: "close", style: .cancel,
            handler: {(_) in alert.dismiss(animated:true)}))
        
        present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.section == 0{
            let data = toEdit[indexPath.row]
            isEdit.append(data)
            toEdit.remove(at: indexPath.row)
        }else if indexPath.section == 1 {
            let data = isEdit[indexPath.row]
            toEdit.append(data)
            isEdit.remove(at: indexPath.row)
        }
        tableView.reloadData()
    }
    
}

