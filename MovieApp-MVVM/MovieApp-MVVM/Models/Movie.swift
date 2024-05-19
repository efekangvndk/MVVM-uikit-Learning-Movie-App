//
//  Movie.swift
//  MovieApp-MVVM
//
//  Created by Efekan Güvendik on 18.05.2024.
//

import Foundation

struct Movie : Decodable{
     //Normalde bunlara değer gelmeli ancak gelmeme ihtimaline karşın biz değişkenleri optional yapalım ki ilerde patlamasın.
    let results : [MovieResult]?
   /* let total_pages : Int?
    let total_results : Int? --> Gereksiz kullanmıycaz. 
    let page : Int?*/
}

struct MovieResult: Decodable{
    let id: Int?
    let posterPath : String?
    
    enum codingKeys : String, CodingKey{
        case id
        case posterPath = "poster_path"
    }
}
