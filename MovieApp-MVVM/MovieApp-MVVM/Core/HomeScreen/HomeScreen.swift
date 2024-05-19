//
//  ViewController.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 17.05.2024.
//

import UIKit

protocol HomeScreenInterface {
    
}

final  class HomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }


}

extension HomeScreen: HomeScreenInterface{
    
}
