//
//  PublicationTableViewCell.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-25.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class PublicationTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblDate: NSLayoutConstraint!
    
    @IBOutlet weak var lblCommentaires: UILabel!
    @IBOutlet weak var lblDescription: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lblDescription.userInteractionEnabled = false
        
        lblCommentaires.backgroundColor = UIColor.clearColor()
        lblCommentaires.textColor = UIColor.whiteColor()
        lblCommentaires.layer.backgroundColor = UIColor(red:0.086, green:0.494, blue:0.984, alpha:1).CGColor
        lblCommentaires.layer.cornerRadius = 8
        lblCommentaires.layer.masksToBounds = false
        lblCommentaires.layer.shouldRasterize = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
