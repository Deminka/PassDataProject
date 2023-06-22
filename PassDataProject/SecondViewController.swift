//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by mac on 18.03.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String!

    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed (button: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else {return}
        
        label.text = "Hello, \(login )"
    }
}
