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
        
        
        
        
        // Get your image somehow
        let image = UIImage(named: "1.jpg")
        
        // Begin a new image that will be the new image with the rounded corners
        // (here with the size of an UIImageView)
        UIGraphicsBeginImageContextWithOptions(imgProfile.bounds.size, false, UIScreen.mainScreen().scale);
        
        // Add a clip before drawing anything, in the shape of an rounded rect
        UIBezierPath(roundedRect: imgProfile.bounds, cornerRadius:50.0).addClip();
        
        // Draw your image
        image?.drawInRect(imgProfile.bounds)
        
        // Get the image, here setting the UIImageView image
        imgProfile.image = UIGraphicsGetImageFromCurrentImageContext();
        
        // Lets forget about that we were drawing
        UIGraphicsEndImageContext();

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}