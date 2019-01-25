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
    var placeholderText = String()
    
    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Segue", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        return button
    }()
    
    lazy var mainTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .orange
        textField.textAlignment = .center
        textField.textColor = .white
        textField.borderStyle = .roundedRect
        textField.placeholder = "Insert text here"
        textField.font = UIFont.init(name: "Arial-BoldItalicMT", size: 16.0)
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        return textField
    }()
    
    @objc func seguePressed() {
        
        delegate?.seguePressed()
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
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
        mainTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 120).isActive = true
        mainTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -125).isActive = true
         mainTextField.bottomAnchor.constraint(equalTo: mainButton.bottomAnchor, constant: -100).isActive = true
    }
}

