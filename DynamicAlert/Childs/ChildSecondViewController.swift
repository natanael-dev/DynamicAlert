//
//  ChildSecondViewController.swift
//  DynamicAlert
//
//  Created by Natanael Simri Alvarez Guzman on 3/06/22.
//

import UIKit

class ChildSecondViewController: UIViewController {
    
    @IBAction func didTapNextButton(_ sender: Any) {
        let oneViewController = ChildOneViewController()
        (self.parent as? MasterAlertViewController)?.push(oneViewController)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
