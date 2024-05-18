//
//
//
//
//
//MARK: İndirme işlemleri.
import Foundation

class MovieServices {
    
    func downloadManegeMovies(){
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=28dae36c39244ad758501ba50490c396") else
        {return}
        NetworkManager.shared.download(url: url) { [weak self] result in //sistem @escaping closure ile çalıştığından bunları bir weak self olarak tanımlamamız ve kullanmamız lazım.
             
        }
    }
}
