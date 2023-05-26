//
//  ViewController.swift
//  CheckInternetConnectivity
//
//  Created by Pratik Patil on 26/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblStatus.text = "Tap on the button below to check internet connectivity !"
    }

    @IBAction func btnCheckTapped(_ sender: Any) {
        
        if CheckInternet.Connection() {
            lblStatus.text = "Congratulations ! Internet is connected !!"
        }
        else {
            lblStatus.text = "Sorry ! Internet is not connected !!"
        }
    }
    
}

