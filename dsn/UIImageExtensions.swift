//
//  RoundedImage.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-12-02.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import Foundation


extension UIImage{
    
    
    
    func makeRounded(bounds : CGRect) -> UIImage {
        
        // Get your image somehow
        let image = UIImage(named: "1.jpg")
        
        // Begin a new image that will be the new image with the rounded corners
        // (here with the size of an UIImageView)
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.mainScreen().scale);
        
        // Add a clip before drawing anything, in the shape of an rounded rect
        UIBezierPath(roundedRect: bounds, cornerRadius:50.0).addClip();
        
        // Draw your image
        self.drawInRect(bounds)
        
        // Get the image, here setting the UIImageView image
        let img = UIGraphicsGetImageFromCurrentImageContext();
        
        // Lets forget about that we were drawing
        UIGraphicsEndImageContext();
        
        return img

    }
    
    
}