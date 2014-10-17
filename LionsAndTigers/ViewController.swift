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
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var tiger1 = Tiger()
        tiger1.name = "Tigger"
        tiger1.breed = "Bengal"
        tiger1.age = 3
        tiger1.image = UIImage(named: "BengalTiger.jpg")
        
        myImageView.image = tiger1.image
        nameLabel.text = tiger1.name
        ageLabel.text = "\(tiger1.age)" // = String interpolation // Alternative: String(myTiger.age)
        breedLabel.text = tiger1.breed
        
        var tiger2 = Tiger()
        tiger2.name = "Tigress"
        tiger2.breed = "Indochinese Tiger"
        tiger2.age = 2
        tiger2.image = UIImage(named: "IndochineseTiger.jpg")
        
        var tiger3 = Tiger()
        tiger3.name = "Jacob"
        tiger3.breed = "Malayan Tiger"
        tiger3.age = 4
        tiger3.image = UIImage(named: "MalayanTiger.jpg")
        
        var tiger4 = Tiger()
        tiger4.name = "Spar"
        tiger4.breed = "Siberian Tiger"
        tiger4.age = 5
        tiger4.image = UIImage(named: "SiberianTiger.jpg")
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem)
    {
    }
    
}
