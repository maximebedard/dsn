//
//  ProfileViewController.swift
//  dsn
//
//  Created by Charles Levesque on 2014-11-15.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class ProfileViewController: ApplicationViewController{
    @IBOutlet weak var btnEnregistrer: UIButton!
    @IBOutlet weak var btnMenu: MainMenuBarButtonItem!
    @IBOutlet weak var imgProfile: UIImageView!
    
    var authors : JSON = JSON.nullJSON
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        btnMenu.loadMenuToggle(self)
    
        if let file = NSBundle.mainBundle().pathForResource("authors", ofType: "json") {
            let data = NSData(contentsOfFile: file)!
            
            authors = JSON(data:data)
        }
        
        
        imgProfile.image = UIImage(named: "2.jpg")?.makeRounded(imgProfile.bounds)
        

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}