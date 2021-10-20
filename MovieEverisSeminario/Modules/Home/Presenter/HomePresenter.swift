//
//  HomePresenter.swift
//  MovieEverisSeminario
//
//  Created by Everis on 20/10/21.
//

import Foundation


protocol HomePresenterProtocol{
    
}

class HomePresenter: HomePresenterProtocol {
    var view: HomeViewControllerProtocol?
    var router: HomeRouterProtocol?
    var interactor: HomeInteractorProtocol?
    
    init(view: HomeViewControllerProtocol, router: HomeRouterProtocol, interactor: HomeInteractorProtocol){
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
}
