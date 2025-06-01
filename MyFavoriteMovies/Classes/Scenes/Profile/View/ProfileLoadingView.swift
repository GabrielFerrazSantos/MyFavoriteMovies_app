//
//  ProfileLoadingView.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

import UIKit

class ProfileLoadingView: UIView {
    // MARK: - Views
    let loadingView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Initializers
    init() {
        super.init(frame: .zero)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - View Code
extension ProfileLoadingView: ViewCode {
    func addSubviews() {
        addSubview(loadingView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                loadingView.centerXAnchor.constraint(equalTo: centerXAnchor),
                loadingView.centerYAnchor.constraint(equalTo: centerYAnchor)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .appThemeColor
    }
}
