//
//  CodeEditorViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-13.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class CodeEditorViewController: UIWebView, UIWebViewDelegate {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }

    func loadCodeEditor() {
        let editorFile = NSBundle.mainBundle().pathForResource("editor", ofType: "html")
        if let editorHtml = NSString(contentsOfFile: editorFile!, encoding: NSUTF8StringEncoding, error: nil) {
            loadHTMLString(editorHtml, baseURL: nil)
        }
    }
    
    let codeEditorId = "editor"
    
    var code:NSString{
        get{
            return stringByEvaluatingJavaScriptFromString("\(editor).getValue();")!
        }
        set{
            stringByEvaluatingJavaScriptFromString("\(editor).setValue(unescape('\(escapeStr(newValue))'));")!
        }
    }
    
    var language:NSString{
        get{
            return stringByEvaluatingJavaScriptFromString("\(editor).getMode();")!
        }
        set{
            stringByEvaluatingJavaScriptFromString("\(editor).setMode('ace/mode/\(newValue)');")!
        }
    }
    
    var editor:NSString{
        get{
            return "ace.edit('\(codeEditorId)').getSession()"
        }
    }
    
    func escapeStr(str : String) -> (String) {
        return CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,str,"[].",":/?&=;+!@#$()',*",CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding))
    }
}

