//
//  HomeInteractor.swift
//  MovieEverisSeminario
//
//  Created by Everis on 20/10/21.
//

import Foundation
import UIKit

protocol HomeInteractorProtocol{
    func getProfileImage(completion: @escaping (UIImage?)->())
    func getMoviesTendencias(completion: @escaping ([Movie]) -> ())
}

class HomeInteractor: HomeInteractorProtocol{
    
    func getProfileImage(completion: @escaping (UIImage?)->()){
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
            completion(UIImage(named: "profilePhoto"))
        }
    }
    
    func getMoviesTendencias(completion: @escaping ([Movie]) -> ()){
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0){
            var movies: [Movie]=[]
            movies.append(Movie(urlImage: "Antman", nombre: "Andman"))
            movies.append(Movie(urlImage: "Advenger", nombre: "Los vengadores"))
            movies.append(Movie(urlImage: "MisionImposible", nombre: "Misión impoisble"))
            
            completion(movies)
        }
    }
}
