//
//  Coordinator.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 11/03/25.
//

import UIKit

protocol Coordinator {
    var rootViewController: UINavigationController { get }
    
    func start()
}
