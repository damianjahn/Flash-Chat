//
//  WelcomeViewController.swift
//  Flash Chat
//
//  Created by Damian Jahn on 13/05/2020.
//  Copyright © 2020 Damian Jahn. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = ""
        var characterIndex = 0.0
        let titleText = "⚡️FlashChat"
        for lettet in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * characterIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(lettet)
            }
            characterIndex += 1
        }
       
    }
    

}
