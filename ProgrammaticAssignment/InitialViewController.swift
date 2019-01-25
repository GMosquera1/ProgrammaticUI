//
//  InitialViewController.swift
//  ProgrammaticAssignment
//
//  Created by Genesis Mosquera on 1/24/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
public var placeholder = ""
    
    let initialView = InitialView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(initialView)
        initialView.delegate = self
    }
    
}

extension InitialViewController: InitialViewDelegate {
    func seguePressed(message: String) {
        let detail = DetailViewController.init(message: message)
        
        navigationController?.pushViewController(detail, animated: true)
    }
}
