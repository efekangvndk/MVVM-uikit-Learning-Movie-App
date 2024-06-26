//
//  HomeViewModel.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 19.05.2024.
//

import Foundation

protocol HomeViewModelInteface {
    var view: HomeScreenInterface? { get set }
    
    func viewDidLoad()
    func getMovies()
}

final class HomeViewModel {
    weak var view: HomeScreenInterface?
    private let service = MovieService()
    var movies: [MovieResult] = []
    
}
extension HomeViewModel: HomeViewModelInteface {
    
    func viewDidLoad() {
        view?.configureVC()
        view?.configureCollectionView()
        getMovies()
    }
    
    func getMovies() {
        service.downloadMovies { [weak self] returnedMovies in
            guard let self = self else { return }
            guard let returnedMovies = returnedMovies else { return }
            
            self.movies = returnedMovies
           
        }
    }
}
