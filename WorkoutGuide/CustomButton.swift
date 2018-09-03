//
//  CustomButton.swift
//  WorkoutGuide
//
//  Created by Pulkit Aggarwal on 03/09/18.
//  Copyright © 2018 Maxx. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.backgroundColor = appColor
        self.setTitleColor(UIColor.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "HelveticaNeue-CondensedBold", size: 20)
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
}
