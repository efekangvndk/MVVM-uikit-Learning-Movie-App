//
//  APIURLS.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 19.05.2024.
//

import Foundation

enum APIURLS{
    static func movies(page: Int) -> String {
        "https://api.themoviedb.org/3/movie/popular?api_key=28dae36c39244ad758501ba50490c396&page=\(page)"
    }
}
