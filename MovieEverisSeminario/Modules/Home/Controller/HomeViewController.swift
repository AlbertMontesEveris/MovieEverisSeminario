//
//  HomeViewController.swift
//  MovieEverisSeminario
//
//  Created by Everis on 20/10/21.
//

import UIKit


protocol HomeViewControllerProtocol {
    
}

class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol?
    let configurator = HomeConfigurator()

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(controller: self)
    }
}

extension HomeViewController:HomeViewControllerProtocol{
    
    
}
