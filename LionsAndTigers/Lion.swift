//
//  Lion.swift
//  LionsAndTigers
//
//  Created by NanYar on 21.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import Foundation
import UIKit


class Lion
{
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subspecies = ""
    
    func roar()
    {
        println("Lion: Roar Roar")
    }
    
    func changeToAlphaMale()
    {
        self.isAlphaMale = true
    }
    
    func randomFact() -> String
    {
        var randomFactString: String
        
        if self.isAlphaMale
        {
            randomFactString = "Male lions are easy to recognize thanks to their distinctive manes. Males with darker manes are more likley to attract females."
        }
        else
        {
            randomFactString = "Female lionesses form the stable social unit and do not tolerate outside females."
        }
        return randomFactString
    }
}
