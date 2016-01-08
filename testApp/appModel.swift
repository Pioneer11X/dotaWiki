//
//  appModel.swift
//  testApp
//
//  Created by Sravan on 31/12/15.
//  Copyright © 2015 pioneer11x. All rights reserved.
//

import Foundation

class heroData{
    
    var heroName = "dummy";
    var heroImageName = "Default";
    var heroBio = "Select one of the options above"
    var heroStats = "Primary Attribute Displayed here"
    var heroAbilityNames: [String] = ["Enter a heroes Name for their abilities to be displayed here."]
    var heroAbilityDescription: [String] = [" "]
    
    init(heroName: String?){
        
        if heroName == nil {
            return
        }
        
        if let bio = bioData[heroName!]{
            
            self.heroBio = bio
            self.heroImageName = imageData[heroName!]!
            self.heroAbilityNames = abilityNameData[heroName!]!
            self.heroAbilityDescription = abilityDescriptionData[heroName!]!
            self.heroStats = statString[heroName!]!
            
            return
            
        }

    }
    
}