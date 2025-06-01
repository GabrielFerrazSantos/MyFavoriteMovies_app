//
//  ProfileHeaderView.swift
//  MyFavoriteMovies
//
//  Created by Gabriel Ferraz dos Santos on 24/05/25.
//

import UIKit

class ProfileHeaderView: UIView {
    // MARK: - Views
    let titleLabelView: UILabel = {
        let view = UILabel()
        view.text = String(localized: "Profile")
        view.font = .systemFont(ofSize: 26, weight: .bold)
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - View Code
extension ProfileHeaderView: ViewCode {
    func addSubviews() {
        addSubview(titleLabelView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate(
            [
                titleLabelView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
                titleLabelView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
                titleLabelView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
                titleLabelView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
            ]
        )
    }
    
    func setupStyle() {
        backgroundColor = .clear
    }
}
