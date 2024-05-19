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
            topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
            bottomAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 5)
        ])
        backgroundColor = .red
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.darkGray.cgColor
    }
}
