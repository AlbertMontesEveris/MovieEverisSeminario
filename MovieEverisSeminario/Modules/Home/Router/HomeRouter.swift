//
//  HomeRouter.swift
//  MovieEverisSeminario
//
//  Created by Everis on 20/10/21.
//

import Foundation

protocol HomeRouterProtocol{
    
}

class HomeRouter: HomeRouterProtocol{
    weak var currentViewController: HomeViewController?
    
    init(withView view: HomeViewController){
        self.currentViewController = view
    }
}
