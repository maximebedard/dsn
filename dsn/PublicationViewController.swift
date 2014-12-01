//
//  PublicationViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-12-01.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class PublicationViewController: UIViewController, UIWebViewDelegate {
    
    var publication : JSON = JSON.nullJSON

    @IBOutlet weak var webView: CodeEditorViewController!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadCodeEditor()

        
        lblTitle.text = publication["title"].string
        lblAuthor.text = publication["author"].string
        lblDate.text = publication["date"].string
        
        webView.delegate = self
    
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
