//
//  NetworkManager.swift
//  MVVM_Training
//
//  Created by Efekan Güvendik on 17.05.2024.
//

import Foundation


class NetworkManager{
    
    static let shared = NetworkManager() //Signleton yapıda yaptık ve bunu private init ile instance durumunu teke  düşürdük.
    private init() {}
    
    func download(url: URL,completion: @escaping (Result<Data,Error >) -> ()) { //bu bir closuredur fonksiyonudur ve boşdur.
        URLSession.shared.dataTask(with: url) { data, response, error in //Burdaki data,response ve error optional yapıdadır.
            //Önce error'u checkliycez. Error varmı yokmu varsa diğer işlemleri geç değilse diğer işlemleri yap ve kontrol et , uygula yapıcaz.
            if let error = error{ //if let ile bunu optional dan kurtardık ve dedikki burda bir adet error var ama dolumu boşmu.
                print(error.localizedDescription)
                completion(.failure(error))
                return //Neden return dedik ? çünki bir error varsa bu closer'dan çıkmamız ve gitmemiz lazım diğerlerine bakmamamı lazım.
            }
            //HTTP 200 code = it's mean Ok ""
           guard
            let response = response as? HTTPURLResponse,
            response.statusCode == 200 else{
               
               completion(.failure(URLError(.badServerResponse)))
               return
               //((response geldimi geldi bunu HTTPURLResponse yaptınmı yaptın virgülden geç yapmadınmı veya gelmedi mi ? returnden çık git
               //herşey tamam gelen statuscodu 200'mü tamam değilmi returnden çık gıt))
           }
              
            
            guard let data = data else {
                
                completion(.failure(URLError(.badURL)))
                return
            }
            
            completion(.success(data))
        }
    }
}



