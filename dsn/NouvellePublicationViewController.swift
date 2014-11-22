//
//  NouvellePublicationViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-20.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class NouvellePublicationViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var webView: CodeEditorViewController!
    @IBOutlet weak var btnLanguage: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.menuInit()
        self.configureTextView()
        webView.loadCodeEditor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureTextView() {
        textView.layer.cornerRadius = 5
        textView.layer.borderColor = UIColor.grayColor().colorWithAlphaComponent(0.5).CGColor
        textView.layer.borderWidth = 0.5
    }
    
    func menuInit() {
        if let swController: SWRevealViewController = self.revealViewController(){
            self.btnMenu.target = self.revealViewController()
            self.btnMenu.action = NSSelectorFromString("revealToggle:")
            self.navigationController?.navigationBar.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    @IBAction func selectLanguage(sender: UIButton){
        
        let languages = ["JavaScript", "Ruby", "Java", "PHP", "Python", "C++", "C", "Objective-C", "C#", "Shell", "CSS", "Perl", "CoffeeScript", "VimL", "Scala", "Go", "Prolog", "Clojure", "Haskell", "Lua"]
        ActionSheetStringPicker.showPickerWithTitle("Selection du language",
            rows: languages, initialSelection: 0,
            doneBlock: {picker, selectedIndex, selectedValue in

                self.btnLanguage.setTitle(languages[selectedIndex], forState: UIControlState.Normal)
                return
            },
            cancelBlock: nil,
            origin: sender)
        
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
