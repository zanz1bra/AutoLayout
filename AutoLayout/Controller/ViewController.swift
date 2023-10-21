//
//  ViewController.swift
//  AutoLayout
//
//  Created by erika.talberga on 21/10/2023.
//

import UIKit

class ViewController: UIViewController {

   
@IBOutlet var styleOutletsCollection: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletsCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    #warning("put the buttons opposite - A, B on bottom of screen, C, D, E - on top of screen")
    #warning("add button style: icon, title, color")
    #warning("when pressing some buttons, hide other buttons or change the view color or image")

}

