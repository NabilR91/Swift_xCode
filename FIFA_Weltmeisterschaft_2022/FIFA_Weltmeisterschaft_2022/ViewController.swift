//
//  ViewController.swift
//  FIFA_Weltmeisterschaft_2022
//
//  Created by Nabil Reimer on 08.11.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let qualifiedTeams = ["Qatar", "Ecuador", "Senegal", "Netherlands", "England", "Iran", "USA", "Wales", "Argentina", "Saudi Arabia", "Mexico", "Poland", "France", "Australia", "Denmark", "Tunisia", "Spain", "Costa Rica", "Germany", "Japan", "Belgium", "Canada", "Morocco", "Croatia", "Brazil", "Serbia", "Switzerland", "Cameroon", "Portugal", "Ghana", "Uruguay", "South Korea"]

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qualifiedTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = qualifiedTeams[indexPath.row]
        content.image = UIImage(named: qualifiedTeams[indexPath.row])
        cell.contentConfiguration = content
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView!.dataSource = self
       
    }
}
