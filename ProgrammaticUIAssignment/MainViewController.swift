//
//  MainViewController.swift
//  ProgrammaticUIAssignment
//
//  Created by Ramu on 1/24/19.
//  Copyright © 2019 Ramu. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    var message = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .magenta
        self.view.addSubview(mainView)
        mainView.mainTextField.delegate = self
        mainView.delegate = self
        

    }
   
}

extension MainViewController: MainViewDelegate {
    func typedMessage(str: String) {
        message = str
    }
    
    func seguePressed() {
        let detail = DetailViewController.init(message: message )
        navigationController?.pushViewController(detail, animated: true)
    }
}

extension MainViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
           mainView.delegate?.typedMessage(str: text)
        }
        textField.resignFirstResponder()
        return true
    }
}
