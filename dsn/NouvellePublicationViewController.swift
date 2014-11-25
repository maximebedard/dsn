//
//  NouvellePublicationViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-20.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class NouvellePublicationViewController: UIViewController {

    @IBOutlet weak var btnMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.menuInit()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func menuInit() {
        if let swController: SWRevealViewController = self.revealViewController(){
            self.btnMenu.target = self.revealViewController()
            self.btnMenu.action = NSSelectorFromString("revealToggle:")
            self.navigationController?.navigationBar.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
