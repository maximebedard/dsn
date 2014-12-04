//
//  PublicationsTableViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-25.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class PublicationsTableViewController: ApplicationTableViewController, UITableViewDelegate {
    
    @IBOutlet weak var btnMenu: MainMenuBarButtonItem!
    
    
    var publications : JSON = JSON.nullJSON
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let file = NSBundle.mainBundle().pathForResource("publications", ofType: "json") {
            let data = NSData(contentsOfFile: file)!
            
            publications = JSON(data:data)
        }
        
        self.tableView.delegate = self;
        
        NSLog("nb publications : \(publications.count)")

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
        return publications.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCellWithIdentifier("PublicationTableViewCell", forIndexPath: indexPath) as PublicationTableViewCell
        
        
        cell.lblTitle.text = publications[indexPath.row]["title"].string
        cell.lblDescription.text = publications[indexPath.row]["description"].string
        cell.lblAuthor.text = publications[indexPath.row]["author"].string
        cell.lblDate.text = publications[indexPath.row]["date"].string
        
        
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("details", sender:self)

    }
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "details" {

            let vc = segue.destinationViewController as PublicationViewController
                
            let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow()!
            
            vc.publication = publications[indexPath.row]

        }
    }


}
