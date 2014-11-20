//
//  ProfileViewController.swift
//  dsn
//
//  Created by Charles Levesque on 2014-11-15.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController{
    @IBOutlet weak var btnEnregistrer: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.menuInit()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func menuInit() {
        if let swController: SWRevealViewController = self.revealViewController(){
            self.btnMenu.target = self.revealViewController()
            self.btnMenu.action = NSSelectorFromString("revealToggle:")
            self.navigationController?.navigationBar.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}