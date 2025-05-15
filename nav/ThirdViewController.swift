//
//  ThirdViewController.swift
//  nav
//
//  Created by Daddy on 03/05/2025.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var notificatinoTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func notifyBtnTapped(_ sender: UIButton) {
        //3.
        let dataDict :[String: String] = ["notification1": self.notificatinoTxtField.text ?? ""]
        NotificationCenter.default.post(name: Notification.Name("RecevingNotificationChannel"), object: nil, userInfo: dataDict)
        self.dismiss(animated: true)
    }
    
}
