//
//  Movie.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 18.05.2024.
//

import Foundation

struct Movie {
     //Normalde bunlara değer gelmeli ancak gelmeme ihtimaline karşın biz değişkenleri optional yapalım ki ilerde patlamasın.
    let page : Int?
    let result : [movireResult]?
    let total_pages : Int?
    let total_results : Int?
}

struct movireResult{
    let id: Int?
    let poster_path : String?
}
