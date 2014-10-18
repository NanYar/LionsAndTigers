import UIKit
import Foundation


struct Tiger
{
    var age = 0
    var name = ""
    var breed = ""
//    var image = UIImage(named: "")
    
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

let myTiger = Tiger()
myTiger.age
myTiger.chuffANumberOfTimes(numberOfTimes: 5)
