//
//  CodeEditorViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-13.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class CodeEditorViewController: UIWebView {
    


    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        
    }

    func loadCodeEditor() {
        let editorFile = NSBundle.mainBundle().pathForResource("editor", ofType: "html")
        if let editorHtml = NSString(contentsOfFile: editorFile!, encoding: NSUTF8StringEncoding, error: nil) {
            loadHTMLString(editorHtml, baseURL: nil)
        }
    }
    
    func getCode() -> NSString {
        return stringByEvaluatingJavaScriptFromString("document.getElementById('').value")!
    }
    
}

