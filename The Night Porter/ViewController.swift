//
//  ViewController.swift
//  The Night Porter
//
//  Created by user911667 on 5/30/19.
//  Copyright © 2019 deestroyah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Table View Delegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected row \(indexPath.row) in section \(indexPath.section)")
    }
    
    //Table View Data Source Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldn't happen"
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    let dailyTasks = [ "Check all windows",
        "Check all doors",
        "Is the boiler fueld?",
        "Check the mailbox",
        "Empty trash containers",
        "If freezing, check water pipes",
        "Document \"strange and unusual\" occurences",]
    
    let weeklyTasks = [ "Check inside all cabins",
                       "Flush all lavatories inside cabins",
                       "Walk the perimeter of the property",]
    
    let monthlyTasks = [ "Test security alarms",
                       "Test motion detectors",
                       "Test smoke alarms",]
    

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



