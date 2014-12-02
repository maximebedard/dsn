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
    
    @IBOutlet weak var imgMember: UIImageView!
    @IBOutlet weak var txtMember: UILabel!
    @IBOutlet weak var txtDatePublication: UILabel!
    @IBOutlet weak var txtNombreVotes: UILabel!
    @IBOutlet weak var txtCommentaire: UITextView!
    
    
    var comment : JSON = JSON.nullJSON
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    init(frame: CGRect, comment : JSON){
        super.init(frame: frame)
        self.comment = comment
        setup()
    }
    
    func setup() {
        NSBundle.mainBundle().loadNibNamed("CommentView", owner: self, options: nil)
        self.addSubview(self.view)
        
        imgMember.image = UIImage(named: comment["image"].string!)?.makeRounded(imgMember.bounds)
        txtCommentaire.text = comment["value"].string
        txtMember.text = comment["author"].string
        txtDatePublication.text = comment["date"].string
        
        txtNombreVotes.text = "\(arc4random_uniform(25))"
        
        view.backgroundColor = UIColor.clearColor()
        
        view.sizeToFit()

        txtCommentaire.backgroundColor = UIColor.clearColor()

        
    }

}
