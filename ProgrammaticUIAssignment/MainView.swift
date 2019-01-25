//
//  MainView.swift
//  ProgrammaticUIAssignment
//
//  Created by Ramu on 1/24/19.
//  Copyright © 2019 Ramu. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func seguePressed()
}

class MainView: UIView {

    weak var delegate: MainViewDelegate?
    
    lazy var mainTextField: UITextField = {
        let textfield = UITextField()
        textfield.backgroundColor = .gray
        textfield.text = "I'm just getting a hang on this programmatic UI"
        return textfield
        
    }()
    
    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Click to Segue", for: .normal)
        button.backgroundColor = .gray
        button.addTarget(self, action: #selector(seguePressed), for: .touchUpInside)
        return button
    }()
    
    
    @objc func seguePressed() {
        delegate?.seguePressed()
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(mainTextField)
        addSubview(mainButton)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        mainTextField.translatesAutoresizingMaskIntoConstraints = false
        mainTextField.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 11).isActive = true
        mainTextField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 11).isActive = true
        mainTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.topAnchor.constraint(equalTo: mainTextField.bottomAnchor, constant: 11).isActive = true
        mainButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
    }
    
    
}
