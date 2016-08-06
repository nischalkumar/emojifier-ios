//
//  ViewController.swift
//  EMOJIFIER
//
//  Created by nischal kumar on 06/08/16.
//  Copyright © 2016 nischal kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.layer.borderColor = UIColor.blueColor().CGColor
        
        self.textView.layer.borderWidth = 2.0
        
        self.textView.becomeFirstResponder()
        
        
        
        let emojifier = Emojifier()
        emojifier.emojifyLine("umbrella is in briefcase which is cool")

        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidChange(textView: UITextView) {
        textView.text=Emojifier().emojifyLine(textView.text!)
    }


}

