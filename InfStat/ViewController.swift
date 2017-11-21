//
//  ViewController.swift
//  InfStat
//
//  Created by Jonathan Daniel on 11/20/17.
//  Copyright © 2017 Jonathan Herrejón. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var tamanoMuestraTF: UITextField!
    @IBOutlet weak var mediaMuestralTF: UITextField!
    @IBOutlet weak var desviacionEstandarTF: UITextField!
    @IBOutlet weak var coefConfianzaTF: UITextField!
    @IBOutlet weak var unoMenosAlphaTF: UITextField!
    @IBOutlet weak var alphaMediosTF: UITextField!
    @IBOutlet weak var zetaAlphaMediosTF: UITextField!
    @IBOutlet weak var limInferiorTF: UITextField!
    @IBOutlet weak var limSuperiorTF: UITextField!
    

    override func viewDidLoad() {
        var tapGestureRecognizer : UITapGestureRecognizer
        super.viewDidLoad()
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    //MARK: Actions
    @IBAction func calcular(_ sender: UIButton) {
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

