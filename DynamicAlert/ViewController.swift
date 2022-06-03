//
//  ViewController.swift
//  DynamicAlert
//
//  Created by Natanael Simri Alvarez Guzman on 3/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vc = MasterAlertViewController()
        self.present(vc, animated: true, completion: nil)
        
    }

}

