//
//  HomeConfigurator.swift
//  MovieEverisSeminario
//
//  Created by Everis on 20/10/21.
//

import Foundation

protocol HomeConfiguratorProtocol{
    func configure(controller: HomeViewController)
}

class HomeConfigurator : HomeConfiguratorProtocol{
    func configure(controller: HomeViewController) {
        let router = HomeRouter(withView: controller)
        let interactor = HomeInteractor()
        controller.presenter = HomePresenter(view: controller,router: router, interactor: interactor)
    }
    
    
}
