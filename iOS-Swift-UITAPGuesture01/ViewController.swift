//
//  ViewController.swift
//  iOS-Swift-UITAPGuesture01
//
//  Created by Pooya on 2020-02-26.
//  Copyright © 2020 centurytrail.com. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

   
    @IBOutlet weak var passIntAct: UIButton!
    @IBOutlet weak var passStringAct: UIButton!
    @IBOutlet weak var passFloatAct: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passIntAct.tag = 10
        passIntAct.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.passIntAct(gesture:))))
        
        
        
        
        let strTapped = MyTapGesture.init(target: self, action: #selector(self.passStringAct(recognizer:)))
        strTapped.stringValue = "YES String DONE"
        strTapped.floatValue = 21.0
        passStringAct.addGestureRecognizer(strTapped)
        
        let floatTapped = MyTapGesture.init(target: self, action: #selector(self.passFloatAct(recognizer:)))
        floatTapped.stringValue = "YES Float DONE"
        floatTapped.floatValue = 28.0
        passFloatAct.addGestureRecognizer(floatTapped)
        
        
    }

    @objc func passStringAct(recognizer: MyTapGesture) {
        print(recognizer.stringValue)
        print(recognizer.floatValue)
    }

    @objc func passFloatAct(recognizer: MyTapGesture) {
        print(recognizer.stringValue)
        print(recognizer.floatValue)
    }
    
    @IBAction func passIntAct(gesture: UITapGestureRecognizer) {
        print("Pass Int = \(passIntAct.tag)")
    }
    
}


class MyTapGesture: UITapGestureRecognizer {
    var floatValue = 15.5
    var stringValue = "text text"
}
