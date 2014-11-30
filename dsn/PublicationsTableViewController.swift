//
//  PublicationsTableViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-25.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class PublicationsTableViewController: UITableViewController, UITableViewDelegate {
    
    @IBOutlet weak var btnMenu: MainMenuBarButtonItem!
    
    
    var bob:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for index in 1...100 {
            bob.append("\(index)")
        }
        tableView.registerNib(UINib(nibName: "PublicationTableViewCell", bundle: nil), forCellReuseIdentifier: "PublicationTableViewCell")
        
        tableView.rowHeight = 200;
        
        btnMenu.loadMenuToggle(self)
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
        return bob.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCellWithIdentifier("PublicationTableViewCell", forIndexPath: indexPath) as PublicationTableViewCell
        
        return cell
    }
    
    
    //override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
    //    self.performSegueWithIdentifier("details", sender:self)
    //}
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        
        
    }


}
