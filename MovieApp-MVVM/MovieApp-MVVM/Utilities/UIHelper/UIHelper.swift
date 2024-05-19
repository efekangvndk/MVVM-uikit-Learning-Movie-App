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
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth * 1.5)
        
        return layout
    }
}
