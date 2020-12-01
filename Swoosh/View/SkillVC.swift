//
//  SkillVC.swift
//  Swoosh
//
//  Created by Keshav Sharma on 05/03/20.
//  Copyright © 2020 Keshav Sharma. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    var player : Player!
    // we promise that code will be there, it is not going to be ni

    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.desiredLeague)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
