//
//  UIHelper.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 19.05.2024.
//

import UIKit

enum UIHelper{
    static func creatHomeFlowLayout() -> UICollectionViewFlowLayout{
        let layout = UICollectionViewFlowLayout()
        
        let itemWidth = CGFloat.dWidth
        
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: itemWidth * 0.5, height: itemWidth * 0.88)
        layout.minimumLineSpacing = 10
        
        return layout
    }
}
