//
//  MainMenuBarButtonItem.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-28.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class MainMenuBarButtonItem: UIBarButtonItem {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
        
    func loadMenuToggle(parentController : UIViewController) {
        if let swController = parentController.revealViewController() {
            self.target = parentController.revealViewController()
            self.action = NSSelectorFromString("revealToggle:")
            let gest = parentController.revealViewController().panGestureRecognizer()
            parentController.navigationController?.navigationBar.addGestureRecognizer(gest!)
        }
    }

}
