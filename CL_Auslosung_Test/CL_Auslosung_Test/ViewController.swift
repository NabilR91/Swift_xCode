//
//  ViewController.swift
//  CL_Auslosung_Test
//
//  Created by Nabil Reimer on 07.11.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var teamA: UIButton!
    @IBOutlet weak var teamB: UIButton!
    @IBOutlet weak var teamC: UIButton!
    @IBOutlet weak var teamD: UIButton!
    @IBOutlet weak var teamE: UIButton!
    @IBOutlet weak var teamF: UIButton!
    @IBOutlet weak var teamG: UIButton!
    @IBOutlet weak var teamH: UIButton!
    
}

func mainFunction(){
    var teamsArray = Array (arrayLiteral: "RB Leibzig", "Manchester City", "Club Brügge", "Benfica Lissabon", "FC Liverpool", "Real Madrid", "AC Mailand", "Tottenham Hotspur", "Eintracht Frankfurt", "SSC Neapel", "Borussia Dortmund", "FC Chelsea", "Inter Mailand", "FC Porto", "Paris Saint-Germain", "FC Bayern")
    
    var opponent = [String]()
    var allTeams = [teamA, teamB, teamC, teamD, teamE, teamF, teamG, teamH]
    
    while(opponent.count < 8) {
        var randomTeam = allTeams.randomElement()!
        opponent.append(randomTeam)
        if let positionTeam = teamsArray.firstIndex(of: teamsArray){
            teamsArray.remove(at: positionTeam)
        }
        opponent.sort()
    }
    
    for i in 0...7{
        allTeams[i].setTitle(,)
    }
}


