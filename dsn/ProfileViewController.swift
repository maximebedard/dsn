//
//  ProfileViewController.swift
//  dsn
//
//  Created by Charles Levesque on 2014-11-15.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class ProfileViewController: ApplicationController{
    @IBOutlet weak var btnEnregistrer: UIButton!
    @IBOutlet weak var btnMenu: MainMenuBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenu.loadMenuToggle(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}