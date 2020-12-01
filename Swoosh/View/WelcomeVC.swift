//
//  ViewController.swift
//  Swoosh
//
//  Created by Keshav Sharma on 31/01/20.
//  Copyright © 2020 Keshav Sharma. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var swooshlogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swooshlogo.frame = CGRect(x: view.frame.size.width/2 - swooshlogo.frame.size.width/2, y: 50 , width: swooshlogo.frame.size.width, height: swooshlogo.frame.size.height )
        bgImage.frame   =  view.frame
        
    }

    @IBAction func unwindFromSkillVC(unwindSegue : UIStoryboardSegue) //write this interface builder function in view Controller where we want to come back to after clicking a button...basically this is the function ehich gets called from the other view controller
    {
        
    }


}

