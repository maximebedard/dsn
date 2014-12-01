//
//  PublicationViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-12-01.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class PublicationViewController: UIViewController {

    @IBOutlet weak var webView: CodeEditorViewController!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadCodeEditor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
