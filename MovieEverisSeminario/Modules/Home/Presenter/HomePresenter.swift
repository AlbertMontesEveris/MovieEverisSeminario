//
//  HomePresenter.swift
//  MovieEverisSeminario
//
//  Created by Everis on 20/10/21.
//

import Foundation


protocol HomePresenterProtocol{
    func getProfileImage()
    func getMoviesTendencia()
    func getCountOfMovies() -> Int
    func getMovieByIndex(_ indexPath: IndexPath) -> Movie?
}

class HomePresenter: HomePresenterProtocol {
    var view: HomeViewControllerProtocol?
    var router: HomeRouterProtocol?
    var interactor: HomeInteractorProtocol?
    
    var movies: [Movie] = []
    init(view: HomeViewControllerProtocol, router: HomeRouterProtocol, interactor: HomeInteractorProtocol){
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func getProfileImage(){
        interactor?.getProfileImage(completion: { [weak self] image in
            guard let welf = self else { return }
            welf.view?.loadProfileImage(image: image)
        })
    }
    
    func getMoviesTendencia(){
        interactor?.getMoviesTendencias(completion: { [weak self] movies in
            guard let welf = self else { return }
            welf.movies=movies
            welf.view?.reloadCollectionView()
        })
    }
    
    func getCountOfMovies() -> Int {
        return movies.count
    }
    
    func getMovieByIndex(_ indexPath: IndexPath) -> Movie? {
        if indexPath.row < movies.count{
            return movies[indexPath.row]
        }
        return nil
    }
}
