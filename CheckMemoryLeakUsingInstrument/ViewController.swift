//
//  ViewController.swift
//  CheckMemoryLeakUsingInstrument
//
//  Created by Rahul Chopra on 06/01/19.
//  Copyright © 2019 Rahul Chopra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setRightBarButton(UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(handleNextScreen)), animated: true)
    }

    @objc func handleNextScreen() {
        self.navigationController?.pushViewController(RedController(), animated: true)
    }

}


class RedController: UITableViewController {
    
    let service = Service()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.redController = self
    }
    
    deinit {
        print("RedController is deinitialized")
    }
}

class Service {
    var redController: RedController?
    
}
