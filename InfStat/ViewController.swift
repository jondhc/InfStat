//
//  ViewController.swift
//  InfStat
//
//  Created by Jonathan Daniel on 11/20/17.
//  Copyright © 2017 Jonathan Herrejón. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        var tapGestureRecognizer : UITapGestureRecognizer
        super.viewDidLoad()
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tapGestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }//end dismissKeyboard
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }//end textFieldShouldReturn


}

