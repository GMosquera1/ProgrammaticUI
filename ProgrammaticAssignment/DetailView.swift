//
//  DetailView.swift
//  ProgrammaticAssignment
//
//  Created by Genesis Mosquera on 1/24/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(nameLabel)
        backgroundColor = .magenta
        labelConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func labelConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 22).isActive = true
    }
}
