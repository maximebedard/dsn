//
//  MenuTableViewController.swift
//  dsn
//
//  Created by Charles Levesque on 2014-11-18.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 4
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        var cellTitle: NSString = "", cellID: NSString = "Cell"

        switch indexPath.row{
        case 0:
            cellTitle = "Votre Profile"
            cellID = "profile"
        case 1:
            cellTitle = "Nouvelle publication"
            cellID = "publication"
        case 2:
            cellTitle = "Fil de publications"
            cellID = "publications"
        case 3:
            cellTitle = "Déconnexion"
            cellID = "deconnexion"
        default:
            cellTitle = "lol"
        }

        cell = tableView.dequeueReusableCellWithIdentifier(cellID, forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = cellTitle
        
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let senderCell = sender as? UITableViewCell{
            let navController: UINavigationController = segue.destinationViewController as UINavigationController
        }
    }

}
