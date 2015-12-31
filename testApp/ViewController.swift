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
        let newHeroClass = heroData(heroName: heroName)
        heroTextView.text = newHeroClass.heroBio
        print(newHeroClass.heroBio)
        
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func Button(sender: UISegmentedControl) {
        
        
        
    }

}

