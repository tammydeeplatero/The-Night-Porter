//
//  ViewController.swift
//  The Night Porter
//
//  Created by user911667 on 5/30/19.
//  Copyright © 2019 deestroyah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func changeBackground(_ sender: Any) {
        view.backgroundColor = UIColor.darkGray
        
        //Change the text color of every label
        //First, get all of the views
        let everything = view.subviews
        for view in everything
        {
            if(view is UILabel)
            {
                let currentView = view as! UILabel
                currentView.textColor = UIColor.darkGray
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

