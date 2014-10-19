//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by NanYar on 17.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import Foundation
import UIKit


struct Tiger
{
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    func chuff()
    {
        println("Chuff Chuff")
    }
    
    func chuffANumberOfTimes(#numberOfTimes: Int)
    {
        for var index = 0; index < numberOfTimes; index++
        {
            chuff()
        }
    }
    
    func chuffANumberOfTimes(#numberOfTimes: Int, isLoud: Bool)
    {
        for var chuff = 1; chuff <= numberOfTimes; ++chuff
        {
            if isLoud
            {
                self.chuff()
            }
            else
            {
                println("Purr Purr")
            }
        }
    }
    
    func ageInTigerYears(regularAge: Int) -> Int
    {
        return regularAge * 3
    }
    
    func randomFact() -> String
    {
        let randomNumber = Int(arc4random_uniform(UInt32(3)))
        var randomFact: String
        
        if randomNumber == 0
        {
            randomFact = "The Tiger is the biggest species in the cat family"
        }
        else if randomNumber == 1
        {
            randomFact = "Tigers can reach a length of 3,3 meters"
        }
        else
        {
            randomFact = "A group of tigers is known as an 'ambush' or 'streak'"
        }
        return randomFact
    }
}
