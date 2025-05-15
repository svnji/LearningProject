//
//  RegistrationVC.swift
//  nav
//
//  Created by Daddy on 15/05/2025.
//

import UIKit

class RegistrationVC: UIViewController {
    @IBOutlet weak var userImgVIew: UIImageView!
    @IBOutlet weak var nameTxtFIeld: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var comfirmPasswordTxtField: UITextField!
    @IBOutlet weak var phoneTxtField: UITextField!
    @IBOutlet weak var addressTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerBtnTapped(_ sender: UIButton) {
        print("HELLo!")
    }
    
    

}
