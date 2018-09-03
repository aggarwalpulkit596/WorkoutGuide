//
//  WorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by Pulkit Aggarwal on 03/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class WorkoutsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let allViews = view.subviews
        
        for singleView in allViews
        {
            if singleView.tag == 10 //is UIButton
            {
                let button = singleView as! UIButton
                button.setTitleColor(UIColor.white, for: .normal)
                button.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
                button.layer.borderColor = UIColor(red: 0.99, green: 0.29, blue: 0.34, alpha: 1.00).cgColor
                button.layer.borderWidth = 1.5
                button.layer.cornerRadius = 5
                button.clipsToBounds = true
            }
        }
        
        
        /*
        let path = Bundle.main.path(forResource: "Workouts", ofType: "plist")
        
        if let validPath = path
        {
            let dict = NSDictionary(contentsOfFile: validPath)
            
            if let validDict = dict
            {
                print(validDict)
            }
        }*/

    }
}
