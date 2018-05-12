//
//  ViewController.swift
//  Login Demo
//
//  Created by Vaibhav on 12/05/18.
//  Copyright © 2018 Vaibhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var btn_login: UIButton!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var txt_email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txt_email.delegate = self
        txt_password.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Login(_ sender: UIButton) {
        
        if (txt_email.text?.isEmpty )!
        {
            show_Alert(message: NSLocalizedString("Please enter valid email address", comment: ""))
        }
        else if(txt_password.text?.isEmpty)!
        {
            show_Alert(message: NSLocalizedString("Please enter valid password", comment: ""))
        }
        else
        {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let main: HomepageVC? = (mainStoryboard.instantiateViewController(withIdentifier: "HomepageVC") as? HomepageVC)
        self.navigationController?.pushViewController(main!, animated: true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

