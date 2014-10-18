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
}
