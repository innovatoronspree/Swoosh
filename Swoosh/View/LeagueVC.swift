//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Keshav Sharma on 05/03/20.
//  Copyright © 2020 Keshav Sharma. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    
    //We have created IBActions for different buttons and we have created a function SelectLeague and then we pass the selected league and only we have selected a league can the nextBtn be enabled, we also wrote a programmatic segue for the nextBtn which is the thing that is enabled
    
    //WHENEVER YOU NEED TO WORK WITH DATA, PUT IT IN A STRUCT OR CLASS, NEVER PASS AROUND MULTIPLE VARIABLES BETWEEN VIEW CONTROLLERS
    //even though we could have declared variables instead of a struct but doing that is not advised
    //avoid writing logic in IBActions instead write it it some function
    
    var player : Player! //impicitly unwrapped optional because we don't want code to run if there is no optional
    @IBOutlet weak var nextBtn: ButtonLayer!
    // this weak keyword is there because so that UI and both the code are not referncing the same thing in memory
    @IBAction func onNextTapped(_ sender: Any) {
        //sender is the button itself if we want to change its name, access it etc
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        
    }

    
    @IBAction func onMensTapped(_ sender: Any) {
        SelectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        SelectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        SelectLeague(leagueType: "coed")
    }
    
    func SelectLeague(leagueType : String)
    {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    //PASSING DATA TO DIFFERENT VIEW CONTROLLERS
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC
        {
            //the above statement tries and assigns destination VC into the LHS variable
            // destination inherits from UIViewController and hence we can downcast UIViewController to SkillVC because skillVC inherits from UIView Controller
            //the above statement grabs the code of destination which here is SkillVC and stores it in skillVC
            //whenever a segue is triggered the preapre function is called, even before the segue loads on screen
            //THE PREPARE FUNCTION IS CALLED BEFORE VIEW DID LOAD IS CALLED ON THE DESTINATON VIEW CONTROLLER
            //this is where passing data betweend view controller takes place
            skillVC.player = player
            //instance of player created in SkillVC and we are passing player from this LeagueVC
        }
    }
    
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
