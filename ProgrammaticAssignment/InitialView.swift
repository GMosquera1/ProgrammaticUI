//
//  InitialView.swift
//  ProgrammaticAssignment
//
//  Created by Genesis Mosquera on 1/24/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

protocol InitialViewDelegate: AnyObject {
    func seguePressed()
}

class InitialView: UIView {
    weak var delegate: InitialViewDelegate?
    
    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Segue", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        return button
    }()
    
    lazy var mainTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Insert text here"
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        return textField
    }()
    
    @objc func seguePressed() {
        
        
        delegate?.seguePressed()
    }
    
    
    override init(frame: CGRect) {
        // set yourself up like any UIView
        super.init(frame: UIScreen.main.bounds)
        // our custom set up
        addSubview(mainButton)
        addSubview(mainTextField)
        setConstraints()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints(){
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        mainTextField.translatesAutoresizingMaskIntoConstraints = false
//        mainTextField.centerXAnchor.constraint(equalToSystemSpacingAfter: self.centerXAnchor, multiplier: 1.0)
        
        
        mainTextField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: -5).isActive = true
        mainTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 150).isActive = true
        mainTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -33).isActive = true
        mainTextField.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
    }
}

