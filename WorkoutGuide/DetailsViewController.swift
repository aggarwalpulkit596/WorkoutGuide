//
//  DetailsViewController.swift
//  WorkoutGuide
//
//  Created by Pulkit Aggarwal on 04/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = appColor
        
        let imgView = view.viewWithTag(6) as! UIImageView
        let workoutImage = UIImage(named: detailsArray[0])
        imgView.image = workoutImage
        
        imgView.layer.borderColor = appColor.cgColor
        imgView.layer.borderWidth = 4
        
        let descTxtView = view.viewWithTag(7) as! UITextView
        descTxtView.text = detailsArray[1]
        descTxtView.textColor = UIColor.white
        descTxtView.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
        
        let button = view.viewWithTag(5) as! UIButton
        button.setTitleColor(.white, for: .normal)
    }


}
