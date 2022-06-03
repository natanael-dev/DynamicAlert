//
//  MasterAlertViewController.swift
//  DynamicAlert
//
//  Created by Natanael Simri Alvarez Guzman on 3/06/22.
//

import UIKit

class MasterAlertViewController: UIViewController {
    
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var containerView: UIView!
    
    
    init(){
        super.init(nibName: String(describing: MasterAlertViewController.self), bundle: Bundle(for: MasterAlertViewController.self))
        self.modalPresentationStyle = .overFullScreen
        self.modalTransitionStyle = .crossDissolve
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate(set) var childViewController: UIViewController! {
        willSet {
            guard let ccontroller = childViewController else { return }
            
            ccontroller.willMove(toParent: nil)
            ccontroller.view.removeFromSuperview()
            ccontroller.removeFromParent()
            self.baseView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            
        }
        
        didSet {
            guard let ccontroller = childViewController else { return }
            addChild(ccontroller)
            containerView.addSubview(ccontroller.view)
            ccontroller.view.constrainToParent()
            ccontroller.didMove(toParent: self)
            
            if self.isViewLoaded {
                self.view.setNeedsLayout()
            }
            
            UIView.animate(withDuration: 0.5 , delay: 0, usingSpringWithDamping:1   , initialSpringVelocity: 5 , options: [], animations: {
                self.baseView.transform = .identity
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        self.baseView.layer.cornerRadius = 5
        self.baseView.layer.shadowRadius = 5
        self.baseView.layer.shadowOffset.height = 5
        self.baseView.layer.shadowColor = UIColor.black.cgColor
        self.baseView.layer.shadowOpacity = 0.5
        self.baseView.clipsToBounds = true
        self.childViewController = ChildOneViewController()
    }
    
    func push(_ viewController: UIViewController){
        self.childViewController = viewController
    }
    
}
