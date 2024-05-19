//
//
//
//
//

//MARK: İndirme işlemleri.
import Foundation

class MovieService {
    
    func downloadMovies(completion: @escaping ([MovieResult]?) -> ()) {
        guard let url = URL(string: APIURLS.movies(page: 1)) else {return}
        
        NetworkManager.shared.download(url: url) { [weak self] result in //sistem @escaping closure ile çalıştığından bunları bir weak self olarak tanımlamamız ve kullanmamız lazım.
            guard let self = self else { return }
            
            switch result { //swithc case bir değişkenin sırayla çalışması amaçlı yapılan işlemler için kullanırız.
            case .success(let data):
                completion(self.handleWithData(data))
            case .failure(let error):
                self.handleWithError(error)//--> error: error olması gerekirdi ancak _ olduğundan gerek yok.
            }
        }
    }
    
    private func handleWithError(_ error: Error){ //Alt çizginin olayı (_)--> eğer bu şekilde kullanım yaparsak error değişkenini başka yerlerde buna bağlı demeden kullanırız. yukarıdaki gibi
        print(error.localizedDescription)
    }
    
    private func handleWithData(_ data : Data) -> [MovieResult]?{
        do {
            let movie = try JSONDecoder().decode(Movie.self, from: data)
            return movie.results
        } catch {
            print(error)
            return nil
        }
    }
}

