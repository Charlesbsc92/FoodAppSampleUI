//
//  ViewController.swift
//  Rewards
//
//  Created by Charles on 29/08/23.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onContinueClicked(_ sender:UIButton) {
        performSegue(withIdentifier: "ToAuthVC", sender: self)
    }
}

