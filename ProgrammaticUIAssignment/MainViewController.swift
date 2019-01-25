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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .magenta
        self.view.addSubview(mainView)
        mainView.delegate = self
        

    }
   
}

extension MainViewController: MainViewDelegate {
    func seguePressed() {
        let detail = DetailViewController.init(message: "I'm just getting a hang on programmatic UI" )
        navigationController?.pushViewController(detail, animated: true)
    }
}
