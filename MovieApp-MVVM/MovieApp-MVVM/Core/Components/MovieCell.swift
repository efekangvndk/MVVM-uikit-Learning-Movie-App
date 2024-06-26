//
//  MovieCell.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 19.05.2024.
//

import UIKit

class MovieCell: UICollectionViewCell {
    static let reuseID = "MovieCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureCell()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCell(){
        backgroundColor = .blue
        layer.cornerRadius = 10
        layer.borderWidth = 2 
    }
}

