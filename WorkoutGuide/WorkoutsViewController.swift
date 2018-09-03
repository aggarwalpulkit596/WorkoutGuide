//
//  WorkoutsViewController.swift
//  WorkoutGuide
//
//  Created by Pulkit Aggarwal on 03/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

var detailsArray = [String]()

class WorkoutsViewController: UIViewController {

    var workoutsDict = [String : [String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Choose Workout"
        let path = Bundle.main.path(forResource: "Workouts", ofType: "plist")
        
        if let validPath = path
        {
            let dict = NSDictionary(contentsOfFile: validPath)
            
            if let validDict = dict
            {
                workoutsDict = validDict as! [String :[String]]
                setButtons(info : validDict)

            }
        }

    }
    func setButtons(info: NSDictionary)
    {
        let allViews = view.subviews
        
        let titleArrays = info.allKeys
    
        for i in 0..<allViews.count//singleView in allViews
        {
            if allViews[i].tag == 10 //is UIButton
            {
                let button = allViews[i] as! UIButton
                button.setTitle(titleArrays[i] as? String, for: .normal)
                button.setTitleColor(UIColor(red: 0.99, green: 0.29, blue: 0.34, alpha: 1.00), for: .normal)
                button.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
                button.layer.borderColor = UIColor(red: 0.99, green: 0.29, blue: 0.34, alpha: 1.00).cgColor
                button.layer.borderWidth = 1.5
                button.layer.cornerRadius = 5
                button.clipsToBounds = true
                
                button.addTarget(self, action: #selector(WorkoutsViewController.goToDetail(sender:)), for: .touchUpInside)
            }
        }
    }
    @objc func goToDetail(sender: UIButton)
    {
        if let title = sender.titleLabel?.text, let array = workoutsDict[title]
        {
            detailsArray = array
            performSegue(withIdentifier: "details", sender: self)
        }
    }
    @IBAction func close(segue: UIStoryboardSegue)
    {
        
    }
}
