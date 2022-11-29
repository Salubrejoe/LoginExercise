//
//  ViewController.swift
//  Login
//
//  Created by Lore P on 09/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgotUsername: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func forgotUserPressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }


}

