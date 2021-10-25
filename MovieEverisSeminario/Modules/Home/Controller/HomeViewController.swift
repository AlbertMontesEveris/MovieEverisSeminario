//
//  HomeViewController.swift
//  MovieEverisSeminario
//
//  Created by Everis on 20/10/21.
//

import UIKit


protocol HomeViewControllerProtocol {
    func loadProfileImage(image: UIImage?)
    func reloadCollectionView()
}

class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol?
    let configurator = HomeConfigurator()
    
    @IBOutlet weak var moviesCollectionView: UICollectionView!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(controller: self)
        presenter?.getProfileImage()
        presenter?.getMoviesTendencia()
    }
}


extension HomeViewController: HomeViewControllerProtocol{
    func reloadCollectionView() {
        moviesCollectionView.reloadData()
    }
    
    
    func loadProfileImage(image: UIImage?){
        profileImageView.image = image
    }
    
}

extension HomeViewController: UICollectionViewDelegate{
    
    
}

extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.getCountOfMovies() ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TendeciaMovieCollectionViewCell", for: indexPath) as? TendeciaMovieCollectionViewCell else {return UICollectionViewCell()}
        if let movie = presenter?.getMovieByIndex(indexPath){
            cell.setMovie(movie)
        }
        return cell
    }
    
    
}
