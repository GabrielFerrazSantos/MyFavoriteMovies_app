//
//  ProfileViewController.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 25/03/25.
//

import UIKit

class ProfileViewController: Controller {
    // MARK: - Properties
    
    // MARK: - Views
    
    // MARK: - Initializers
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    // MARK: - Bind
    
    // MARK: - Functions
}

// MARK: - View Code
extension ProfileViewController: ViewCode {
    func addSubviews() {
        
    }
    
    func setupConstraints() {
        
    }
    
    func setupStyle() {
        
    }
}
