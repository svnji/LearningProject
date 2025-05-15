//
//  SecondVCViewController.swift
//  nav
//
//  Created by Daddy on 24/04/2025.
//

import UIKit

class SecondVCViewController: UIViewController {

    @IBOutlet weak var welcomingLbl: UILabel!
    @IBOutlet weak var messageTxtField: UITextField!
    var welcomingNamee: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.welcomingLbl.text = welcomingNamee
    }
    

    @IBAction func goBackBtnTapped(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func goToThirScreenBtnTapped(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC  = sb.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.present(thirdVC, animated: true)
    }
    
}
