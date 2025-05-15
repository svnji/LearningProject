//
//  ViewController.swift
//  nav
//
//  Created by Daddy on 04/03/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLbl: UILabel!
    @IBOutlet weak var welcomingTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //1.
        NotificationCenter.default.addObserver(self, selector: #selector(didReceivedNotification(_:)), name: Notification.Name("RecevingNotificationChannel"), object: nil)

    }
    //2.
    @objc func didReceivedNotification(_ notification: Notification) {
        //4.
        guard let dict = notification.userInfo as? [String: String], let message = dict["notification1"] else {return}
        self.messageLbl.text = message
    }

    @IBAction func goToNextBtnTapped(_ sender: UIButton) {
        let name = welcomingTxtField.text ?? ""
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC  = sb.instantiateViewController(withIdentifier: "SecondVCViewController") as! SecondVCViewController
        secondVC.welcomingNamee = name
        self.present(secondVC, animated: true)
    }
}

