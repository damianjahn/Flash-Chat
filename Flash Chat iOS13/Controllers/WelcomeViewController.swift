//
//  WelcomeViewController.swift
//  Flash Chat
//
//  Created by Damian Jahn on 13/05/2020.
//  Copyright © 2020 Damian Jahn. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = Constants.appName

        titleLabel.text = ""
        var characterIndex = 0.0
        let titleText = Constants.appName
        for lettet in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * characterIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(lettet)
            }
            characterIndex += 1
        }
       
    }
    

}
