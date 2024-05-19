//
//  ViewController.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 17.05.2024.
//

import UIKit

protocol HomeScreenInterface : AnyObject{
    func configureVC()
    func configureCollectionView()
}



final  class HomeScreen: UIViewController {

    private let ViewModel = HomeViewModel()
    private var colleectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ViewModel.view = self
        ViewModel.viewDidload()
    }


}

extension HomeScreen: HomeScreenInterface{
    func configureVC() {
        view.backgroundColor = .systemPink
        
    }
    func configureCollectionView() {
        colleectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        view.addSubview(colleectionView)
        
        colleectionView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
