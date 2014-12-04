//
//  NouvellePublicationViewController.swift
//  dsn
//
//  Created by Maxime Bédard on 2014-11-20.
//  Copyright (c) 2014 etsmtl. All rights reserved.
//

import UIKit

class NouvellePublicationViewController: ApplicationViewController, UIWebViewDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var webView: CodeEditorViewController!
    @IBOutlet weak var btnLanguage: UIButton!
    @IBOutlet weak var btnMenu: MainMenuBarButtonItem!
    
    let languages = ["JavaScript", "Ruby", "Java", "PHP", "Python", "C++", "C", "Objective-C", "C#", "Shell", "CSS", "Perl", "CoffeeScript", "VimL", "Scala", "Go", "Prolog", "Clojure", "Haskell", "Lua"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTextView()
        webView.loadCodeEditor()
        webView.delegate = self
        btnMenu.loadMenuToggle(self)
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
    
    @IBAction func selectLanguage(sender: UIButton){
        

        ActionSheetStringPicker.showPickerWithTitle("Selection du language",
            rows: languages, initialSelection: 0,
            doneBlock: {picker, selectedIndex, selectedValue in

                self.btnLanguage.setTitle(self.languages[selectedIndex], forState: UIControlState.Normal)
                return
            },
            cancelBlock: nil,
            origin: sender)
        
    }

    func webViewDidFinishLoad(webView: UIWebView){
        self.webView.language = "ruby"
        
        var str:String = ""
        str += "class QuickSort\n"
        str += " \n"
        str += "  def self.sort!(keys)\n"
        str += "    quick(keys,0,keys.size-1)\n"
        str += "  end\n"
        str += " \n"
        str += "  private\n"
        str += " \n"
        str += "  def self.quick(keys, left, right)\n"
        str += "    if left < right\n"
        str += "      pivot = partition(keys, left, right)\n"
        str += "      quick(keys, left, pivot-1)\n"
        str += "      quick(keys, pivot+1, right)\n"
        str += "    end\n"
        str += "    keys\n"
        str += "  end\n"
        str += " \n"
        str += "  def self.partition(keys, left, right)\n"
        str += "    x = keys[right]\n"
        str += "    i = left-1\n"
        str += "    for j in left..right-1\n"
        str += "      if keys[j] <= x\n"
        str += "        i += 1\n"
        str += "        keys[i], keys[j] = keys[j], keys[i]\n"
        str += "      end\n"
        str += "    end\n"
        str += "    keys[i+1], keys[right] = keys[right], keys[i+1]\n"
        str += "    i+1\n"
        str += "  end\n"
        str += " \n"
        str += "end\n"
        self.webView.code = str
        
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
