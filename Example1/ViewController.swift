//
//  ViewController.swift
//  Example1
//
//  Created by Kevin on 6/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func accionOk() {
        let cadena = self.textInput.text
        if cadena == nil || cadena!.isEmpty {
            let alertController = UIAlertController(title: "¡Ops!", message: "Parece que se te ha olvidado pasar un texto, por favor escribe algo en el cuadro de texto.", preferredStyle: .alert)
            let OKAction = UIAlertAction(title: "Vale", style: .default) { (action) in }
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true)
            return
        }
        self.titleText.text = cadena
    }
    @IBAction func accionSacame() {
        
    }

}

