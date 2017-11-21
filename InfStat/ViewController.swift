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
        
        //Add functionality to return button in keyboard
        self.tamanoMuestraTF.delegate = self;
        self.mediaMuestralTF.delegate = self;
        self.desviacionEstandarTF.delegate = self;
        self.coefConfianzaTF.delegate = self;
        self.unoMenosAlphaTF.delegate = self;
        self.alphaMediosTF.delegate = self;
        self.zetaAlphaMediosTF.delegate = self;
        self.limInferiorTF.delegate = self;
        self.limSuperiorTF.delegate = self;
        //end Add functionality to return button in keyboard
        
        //Add gesture recognizer to hide keyboard
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tapGestureRecognizer)
        //end Add gesture recognizer to hide keyboard
    }//end viewDidLoad
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()    //Hide the keyboard
        return true //Process the press of Done key
    }//end textFieldShouldReturn
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //Convert text String input to Double for operations
        if var numbertamanoMuestra = tamanoMuestraTF.text, var tamanoMuestra = Double(numbertamanoMuestra){}
        if var numbermediaMuestral = mediaMuestralTF.text, var mediaMuestral = Double(numbermediaMuestral){}
        if var numberdesviacionEstandar = desviacionEstandarTF.text, var desviacionEstandar = Double(numberdesviacionEstandar){}
        if var numbercoefConfianza = coefConfianzaTF.text, var coefConfianza = Double(numbercoefConfianza){}
        if var numberunoMenosAlpha = unoMenosAlphaTF.text, var unoMenosAlpha = Double(numberunoMenosAlpha){}
        if var numberalphaMedios = alphaMediosTF.text, var alphaMedios = Double(numberalphaMedios){}
        if var numberzetaAlphaMedios = zetaAlphaMediosTF.text, var zetaAlphaMedios = Double(numberzetaAlphaMedios){}
        if var numberlimInferior = limInferiorTF.text, var limInferior = Double(numberlimInferior){}
        if var numberlimSuperior = limSuperiorTF.text, var limSuperior = Double(numberlimSuperior){}
        //end Convert text String input to Double for operations
    }//end textFieldDidEndEditing
    
    //MARK: Actions
    @IBAction func calcular(_ sender: UIButton) {

    }//end calcular
    
    
    ///////////////////////////////////////////////////////////////////
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//end didReceiveMemoryWarning
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }//end dismissKeyboard
    
    
    ///////////////////////////////////////////////////////////////////

}

