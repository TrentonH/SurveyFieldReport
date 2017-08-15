//
//  ViewController.swift
//  SurveyFieldReport1.1
//
//  Created by Trenton Hamilton on 8/15/17.
//  Copyright © 2017 Trenton Hamilton. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let fieldOption = ["House Stake, staked per plot plan", "house Stake, unable to stake",
    "House Stake, see comments", "Foundation Form Check, passed",
    "Foundation Form Check, FAILED", "Foundation Form Check, see comments",
    "Rough Grade Stakes, set per plot plan", "Rough Grade Stakes, see comments",
    "Improvements Survey, revisions needed", "Improvements Survey, flatwork not complete",
    "Improvements Survey, see comments", "Grading Survey, passed",
    "Grading Survey, FAILD - gradeing/flatowrk", "Grading Survey, FAILD - correction stakes set",
    "Grading Survey, see comments"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return fieldOption.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = fieldOption[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if  tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

