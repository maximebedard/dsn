//
//  PublicationTableViewCell.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-25.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class PublicationTableViewCell: UITableViewCell {

    @IBOutlet weak var webView: CodeEditorViewController!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.sizeToFit()
        webView.loadCodeEditor()
        // Initialization code
    }

    
}
