//
//  ViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-06.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: CodeEditorViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadCodeEditor();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

