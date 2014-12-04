//
//  PublicationView.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-12-02.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class PublicationView: UIView, UIWebViewDelegate {
    
    var publication : JSON = JSON.nullJSON
    
    var authors : JSON = JSON.nullJSON

    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    @IBOutlet weak var lblDescription: UITextView!
    @IBOutlet var view: UIView!
    
    @IBOutlet weak var webView: CodeEditorViewController!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    init(frame: CGRect, publication: JSON ){
        super.init(frame: frame)
        self.publication = publication
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        NSBundle.mainBundle().loadNibNamed("PublicationView", owner: self, options: nil)
        self.addSubview(self.view)
        webView.loadCodeEditor()
        
        lblAuthor.text = publication["author"].string
        lblTitle.text = publication["title"].string
        lblDate.text = publication["date"].string
        lblDescription.text = publication["description"].string
        
        webView.delegate = self
        
        view.backgroundColor = UIColor.clearColor()
        lblDescription.backgroundColor = UIColor.clearColor()
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        self.webView.code = publication["snippet"].string!
        self.webView.language = publication["language"].string!
    }
    
}
