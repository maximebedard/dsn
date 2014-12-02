//
//  PublicationViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-12-01.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class PublicationViewController: ApplicationViewController, UIWebViewDelegate {
    
    var publication : JSON = JSON.nullJSON
    
    var authors : [Dictionary<String, String>] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sv = UIScrollView(frame: self.view.bounds)

        sv.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight;
        sv.scrollEnabled = true
        self.view.addSubview(sv)
        
        
        let publicationViewHeight : CGFloat = 800
        let commentViewHeight : CGFloat = 120

        
        let publicationView = PublicationView(frame: CGRectMake(0,0, self.view.bounds.width, publicationViewHeight), publication: publication)
        
        sv.addSubview(publicationView)
        var i : CGFloat = 0
        for (index: String, subJson: JSON) in publication["comments"] {
            
            let y : CGFloat = publicationView.bounds.height + (CGFloat(i)  * commentViewHeight)
            
            let cv = CommentView(frame: CGRectMake(0, y, self.view.bounds.width, commentViewHeight), comment:subJson)
            
            sv.addSubview(cv)
            i++
            
        }
        
        sv.contentSize = CGSizeMake(self.view.bounds.width, publicationViewHeight + (i * commentViewHeight))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func webViewDidFinishLoad(webView: UIWebView) {
        let wv = webView as CodeEditorViewController
        wv.code = publication["snippet"].string!
        wv.language = publication["language"].string!
    }

}
