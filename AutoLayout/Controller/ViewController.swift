//
//  ViewController.swift
//  AutoLayout
//
//  Created by erika.talberga on 21/10/2023.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var styleOutletsCollection: [UIButton]!
    
    @IBOutlet weak var backgroundButton: UIButton!
    
    @IBOutlet weak var buttonColor: UIButton!
    
    @IBOutlet weak var undo: UIButton!
    
    @IBOutlet weak var hiddenButton: UIButton!
    
    @IBOutlet weak var hiddenShadows: UIButton!
    
    
    var originalButtonColor: UIColor?
    var originalButtonTitleColor: UIColor?
    var originalButtonTitle: String?
    var originalButtonBackgroundColor: UIColor?

    var originalBackgroundColor: UIColor?
    var originalBackgroundButtonTitle: String?
    var originalBackgroundButtonTitleColor: UIColor?
    var originalBackgroundButtonTintColor: UIColor?
    
    var isButtonHidden = false
    
    var shadowsHidden = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletsCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.black.cgColor
            button.layer.shadowColor = UIColor.darkGray.cgColor
            button.layer.shadowOffset = CGSize(width: 0, height: 2)
            button.layer.shadowOpacity = 1.0
            button.layer.shadowRadius = 0
            button.layer.masksToBounds = false
        }
        
        originalButtonColor = buttonColor.tintColor
        originalButtonTitleColor = buttonColor.titleColor(for: .normal)
        originalButtonTitle = buttonColor.title(for: .normal)
        originalButtonBackgroundColor = buttonColor.backgroundColor
            
        originalBackgroundColor = view.backgroundColor
        originalBackgroundButtonTitle = backgroundButton.title(for: .normal)
        originalBackgroundButtonTitleColor = backgroundButton.titleColor(for: .normal)
        originalBackgroundButtonTintColor = backgroundButton.tintColor
    }
    
//    #warning("put the buttons opposite - A, B on bottom of screen, C, D, E - on top of screen")
//    #warning("add button style: icon, title, color")
    #warning("when pressing some buttons, hide other buttons or change the view color or image")

    @IBAction func undoChanges(_ sender: Any) {
        buttonColor.tintColor = originalButtonColor
        buttonColor.setTitleColor(originalButtonTitleColor, for: .normal)
        buttonColor.setTitle(originalButtonTitle, for: .normal)
        buttonColor.backgroundColor = originalButtonBackgroundColor
        
        view.backgroundColor = originalBackgroundColor
        backgroundButton.setTitle(originalBackgroundButtonTitle, for: .normal)
        backgroundButton.setTitleColor(originalBackgroundButtonTitleColor, for: .normal)
        backgroundButton.tintColor = originalBackgroundButtonTintColor
        
        if isButtonHidden {
            hiddenButton.isHidden = false
            isButtonHidden = false
        }
        
        shadowsHidden = false
        styleOutletsCollection.forEach {button in
            button.layer.shadowOpacity = 1.0}
        
    }
    
    @IBAction func changeColor(_ sender: Any) {
        buttonColor.tintColor = UIColor.white
        buttonColor.setTitleColor(UIColor.white, for: .normal)
        buttonColor.setTitle("I'm red now!", for: .normal)
        buttonColor.backgroundColor = UIColor.red
    }
        

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = UIColor.green
        backgroundButton.setTitle("Green", for: .normal)
        backgroundButton.setTitleColor(UIColor.green, for: .normal)
        backgroundButton.tintColor = UIColor.white
    }
    
    
    @IBAction func hideButton(_ sender: UIButton) {
        sender.isHidden = true
        isButtonHidden = true
    }
    
    @IBAction func hideShadows(_ sender: Any) {
        shadowsHidden = true
        styleOutletsCollection.forEach { button in
            button.layer.shadowOpacity = 0}
    }
    
    
    
}

