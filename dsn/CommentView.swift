//
//  CommentView.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-12-02.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class CommentView: UIView {

    
    @IBOutlet var view: UIView!
    
    @IBOutlet weak var imgProfile: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        NSBundle.mainBundle().loadNibNamed("CommentView", owner: self, options: nil)
        self.addSubview(self.view)
        
        imgProfile.image = UIImage(named: "6.jpg")?.makeRounded(imgProfile.bounds)
        
        view.backgroundColor = UIColor.clearColor()
    }

}
