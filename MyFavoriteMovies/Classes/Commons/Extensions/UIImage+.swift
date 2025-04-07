//
//  UIImage+.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import Alamofire
import UIKit

extension UIImageView {
    func setImageFrom(url: String) {
        AF.request(url).response { response in
            if let data = response.data {
                self.image = UIImage(data: data)
            } else {
                self.image = UIImage()
            }
        }
    }
    
    func setImageFrom(base64String: String) {
        guard let data = Data(base64Encoded: base64String),
              let image = UIImage(data: data)
        else { return }
        
        self.image = image
    }
}
