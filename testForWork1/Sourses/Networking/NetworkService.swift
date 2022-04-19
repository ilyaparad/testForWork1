
import Foundation
import UIKit

class NetworkService {

    func request(urlString: String, complition: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            fatalError("Error getting names URL")
        }
        
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    complition(.failure(error))
                }

                guard let data = data else { return }
                complition(.success(data))
            }
        }
        .resume()
    }
}

extension UIImageView {
    
    func loadFrom(URLAddress: String) {
        guard let url = URL(string: URLAddress) else {
            
            return
        }

        DispatchQueue.main.async { [weak self] in
            if let imageData = try? Data(contentsOf: url) {
                if let loadedImage = UIImage(data: imageData) {
                        self?.image = loadedImage
                }
            }
        }
    }
}
