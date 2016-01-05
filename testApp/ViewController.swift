//
//  ViewController.swift
//  testApp
//
//  Created by Sravan on 25/12/15.
//  Copyright © 2015 pioneer11x. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var heroImageView: UIImageView!
    @IBOutlet var heroTextView: UITextView!
    @IBOutlet var inputTextField: UITextField!
    var newHeroClass: heroData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
        print("Loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool{
        
        let heroName = textField.text
        print(heroName)
        newHeroClass = heroData(heroName: heroName)
        heroTextView.text = newHeroClass!.heroStats
        heroImageView.image = UIImage(named: (newHeroClass?.heroImageName)!)    
        
        
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func Button(sender: UISegmentedControl) {
        
        let indexOfButton = sender.selectedSegmentIndex
        
        switch(indexOfButton){
        case 0:
            heroTextView.text = newHeroClass!.heroStats
            break
        case 1:
            let count = (newHeroClass!.heroAbilityNames).count
            var abilityString = ""
            for i in 0..<count{
                abilityString.appendContentsOf((newHeroClass!.heroAbilityNames)[i])
                abilityString.appendContentsOf(":\n")
                abilityString.appendContentsOf((newHeroClass!.heroAbilityDescription)[i])
                abilityString.appendContentsOf("\n\n")
            }
            heroTextView.text = abilityString
            break
        case 2:
            heroTextView.text = newHeroClass!.heroBio
            break
        default: break
        }
        
    }

}

