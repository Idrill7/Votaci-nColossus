//
//  ViewController.swift
//  Helloworld
//  App votacion colossus
//  Created by alejandro gonzalez casado on 14/9/18.
//  Copyright © 2018 Idrilplays. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet var notName: UILabel!
    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var twitterTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        helloLabel.text = ""
        notName.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton(_ sender: UIButton) {

        
        let alertController: UIAlertController = UIAlertController(title: "¡GRACIAS POR VOTAR!", message: "Confirma tu voto presionando 🆗", preferredStyle: .alert)
        
        let okAction : UIAlertAction = UIAlertAction(title: "🆗", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        
        let cancelAction : UIAlertAction = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        
        alertController.addAction(cancelAction)

    
        present(alertController, animated: true, completion: nil)
        

    let theName = nameTextField.text!
        
    /*let theTwitterText = twitterTextField.text!*/
        
    helloLabel.text = "Hola \(theName), ¡gracias por su voto!"
        notName.text = ""
        
        if(nameTextField.text == "" && twitterTextField.text == "")
        {
            helloLabel.text = " NO HAS INTRODUCIDO TU NOMBRE NI TU CUENTA DE TWITTER"
        
        }
            
        else if (twitterTextField.text == "")
        { notName.text = "\(theName), NO HAS INTRODUCIDO TU CUENTA DE TWITTER"
          helloLabel.text = " "
    }
    else if (nameTextField.text == "")
        { notName.text = "NO HAS INTRODUCIDO TU NOMBRE"
            helloLabel.text = " "
            
        }
        
        
    }

}

