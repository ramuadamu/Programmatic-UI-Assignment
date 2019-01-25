//
//  DetailView.swift
//  ProgrammaticUIAssignment
//
//  Created by Ramu on 1/24/19.
//  Copyright © 2019 Ramu. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Click to segue"
        return label
    }()

    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(myLabel)
        backgroundColor = .green
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 11).isActive = true
    }
}
