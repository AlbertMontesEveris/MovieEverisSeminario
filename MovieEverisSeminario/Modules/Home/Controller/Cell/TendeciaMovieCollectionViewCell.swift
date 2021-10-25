//
//  TendeciaMovieCollectionViewCell.swift
//  MovieEverisSeminario
//
//  Created by Everis on 20/10/21.
//

import UIKit

class TendeciaMovieCollectionViewCell: UICollectionViewCell {
    static let indentifier = "TendeciaMovieCollectionViewCell"
    
    private var movie: Movie?
    
    func setMovie(_ movie : Movie){
        self.movie = movie
    }
    
}
