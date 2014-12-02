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

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var webView: CodeEditorViewController!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...5 {
            let y : CGFloat = CGFloat(i)  * self.view.frame.size.height
            let view = UIView(frame:CGRectMake(0, y,self.view.frame.size.width, self.view.frame.size.height))
            view.backgroundColor = UIColor.greenColor().colorWithAlphaComponent(1 - (0.1 * CGFloat(i)))
            scrollView.addSubview(view)
        }
        
        scrollView.scrollEnabled = true
        
        NSLog("\(self.view.bounds.width)x\(self.view.bounds.height)")
        scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height*10)
        //webView.loadCodeEditor()

        
        //lblTitle.text = publication["title"].string
        //lblAuthor.text = publication["author"].string
        //lblDate.text = publication["date"].string
        
        //webView.delegate = self
    
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
