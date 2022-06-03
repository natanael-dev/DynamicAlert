//
//  ChildOneViewController.swift
//  DynamicAlert
//
//  Created by Natanael Simri Alvarez Guzman on 3/06/22.
//

import UIKit

class ChildOneViewController: UIViewController {

    @IBAction func didTapNextButton(_ sender: Any) {
        let secondViewController = ChildSecondViewController()
        (self.parent as? MasterAlertViewController)?.push(secondViewController)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
