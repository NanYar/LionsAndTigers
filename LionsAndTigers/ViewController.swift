//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by NanYar on 17.10.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var randomFactLabel: UILabel!
    
    var arrayOfTigers: [Tiger] = []
    var currentIndex = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var tiger1 = Tiger()
        tiger1.name = "Tigger"
        tiger1.breed = "Bengal"
        tiger1.age = 3
        tiger1.image = UIImage(named: "BengalTiger.jpg")
        tiger1.chuff()
        tiger1.age = tiger1.ageInTigerYears(tiger1.age)
        
        arrayOfTigers.append(tiger1)
        
        myImageView.image = tiger1.image
        nameLabel.text = tiger1.name
        ageLabel.text = "\(tiger1.age)" // = String interpolation // Alternative: String(myTiger.age)
        breedLabel.text = tiger1.breed
        randomFactLabel.text = tiger1.randomFact()
        
        
        var tiger2 = Tiger()
        tiger2.name = "Tigress"
        tiger2.breed = "Indochinese Tiger"
        tiger2.age = 2
        tiger2.image = UIImage(named: "IndochineseTiger.jpg")
        tiger2.chuff()
        tiger2.age = tiger2.ageInTigerYears(tiger2.age)
        
        var tiger3 = Tiger()
        tiger3.name = "Jacob"
        tiger3.breed = "Malayan Tiger"
        tiger3.age = 4
        tiger3.image = UIImage(named: "MalayanTiger.jpg")
        tiger3.chuff()
        tiger3.age = tiger3.ageInTigerYears(tiger3.age)
        
        var tiger4 = Tiger()
        tiger4.name = "Spar"
        tiger4.breed = "Siberian Tiger"
        tiger4.age = 5
        tiger4.image = UIImage(named: "SiberianTiger.jpg")
        tiger4.chuff()
        tiger4.age = tiger4.ageInTigerYears(tiger4.age)
        
        
        arrayOfTigers += [tiger2, tiger3, tiger4]
        
        tiger1.chuffANumberOfTimes(numberOfTimes: 3)
        tiger1.chuffANumberOfTimes(numberOfTimes: 5, isLoud: false)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem)
    {
        //println("currentIndex: \(currentIndex)")
        
        var randomIndex: Int
        
        do
        {
            randomIndex = Int(arc4random_uniform(UInt32(arrayOfTigers.count)))
        }
        while randomIndex == currentIndex
        
        currentIndex = randomIndex
        
        let randomTiger = arrayOfTigers[randomIndex]
        
//        myImageView.image = randomTiger.image
//        nameLabel.text = randomTiger.name
//        ageLabel.text = String(randomTiger.age)
//        breedLabel.text = randomTiger.breed
        
        UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve
            , animations:
            {
                self.myImageView.image = randomTiger.image
                self.nameLabel.text = randomTiger.name
                self.ageLabel.text = String(randomTiger.age)
                self.breedLabel.text = randomTiger.breed
                self.randomFactLabel.text = randomTiger.randomFact()
            }
            , completion: { (finised: Bool) -> () in } )
        
        //println("randomIndex: \(randomIndex)")

    }
    
}
