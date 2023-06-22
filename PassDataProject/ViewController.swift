//
//  ViewController.swift
//  PassDataProject
//
//  Created by mac on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTaxtField: UITextField!
    @IBOutlet weak var returnLabel: UILabel!
     
    @IBAction func unwinDToMainScreen (segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else {return}
        guard let svc = segue.source as? SecondViewController else {return}
        self.returnLabel.text = svc.label.text
    }
    
    @IBAction func sendPressed (sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTextField.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

