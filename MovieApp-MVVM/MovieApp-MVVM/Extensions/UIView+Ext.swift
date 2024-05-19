//
//  UIViewExt.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 19.05.2024.
//


import UIKit

extension UIView{
    func pinToEdgeOf(view: UIView){
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
        backgroundColor = .red
        layer.cornerRadius = 15
        layer.borderWidth = 2
        layer.borderColor = UIColor.darkGray.cgColor
    }
}
