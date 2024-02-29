//
//  ViewController.swift
//  Animals
//
//  Created by Aranza Manriquez Alonso on 01/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //button
        myButton.backgroundColor = .red
        myButton.setTitle("Buscar un animal", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        
        
        //text field
        myTextField.textColor = .black
        myTextField.placeholder = "Escribe el nombre de algun animal"
        
        //Text View
        myTextView.text = "Animales"
        myTextView.textColor = .red
        myTextView.isEditable = false
        
        
    }
    
    
    @IBAction func myButtonAction(_ sender: Any) {
        
        guard let animalName = myTextField.text?.lowercased() else {
                return 
            }
        
        switch animalName {
                
            case "vaca":
                myImageView.image = UIImage(named: "vaca")
                
            case  "tigre":
                myImageView.image = UIImage(named: "tigre")
                
            case  "zorro":
                myImageView.image = UIImage(named: "zorro")
                
            case  "hipopotamo":
                myImageView.image = UIImage(named: "hipopotamo")
                
            case  "venado":
                myImageView.image = UIImage(named: "venado")
                
            default : showAlert(message: "Escribe otro animal")
        }
        
        func showAlert(message: String) {
            let alert = UIAlertController(title: "No encontrado", message: message, preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            
            self.present(alert, animated: true)
            
        }
        
    }
}
