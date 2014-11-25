//
//  CommentViewCell.swift
//  dsn
//
//  Created by Charles Levesque on 2014-11-24.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class CommentViewCell: UITableViewCell, UITextViewDelegate {
    @IBOutlet weak var imgMember: UIImageView!
    @IBOutlet weak var txtMember: UILabel!
    @IBOutlet weak var txtDatePublication: UILabel!
    @IBOutlet weak var txtNombreVotes: UILabel!
    @IBOutlet weak var txtCommentaire: UITextView!

    /**
    Called when nib is being loaded.
    */
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    /**
    Makes the comment same height of it's content so you don't have to scroll.
    
    :param: textView The textView that changed.
    */
    func textViewDidChange(textView: UITextView) {
        textView.sizeToFit()
        self.sizeToFit()
    }
}
